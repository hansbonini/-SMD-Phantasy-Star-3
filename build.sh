#!/bin/sh

version="1.0.0_alpha_rc5"

this="${0##*/}"

usage="USAGE: ${this} [--switches] <assembly file> <output> [output] [... [outputN]]
       ${this} --help"

help="$this for disassembled SEGA Mega Drive / Genesis Phantasy Star games.
Version ${version}
By zucca@kahvipannu.com
License: BSD

Major dependencies are
    - asl, the macro assembler
    - gawk 4.1.1 or newer for inline patching
    - gcc only for compiling the p2bin
    - BSDiff, Xdelta, bdelta, ips.py for support of patch file creation
    - md5sum, sha1sum, sha244sum, sha256sum, sha384sum and sha512sum OR rhash to be able to create checksums of the compiled binary 

Note that this script may reside anywhere in the filesystem.
Also running this script outside of the directory where the assembly is allowed.

$usage

Where output may be *.bin *.bsdiff *.xdelta *.bdelta ...
Hashes are created by _appending_ hash extension to the filename.

Switches:

    Location of the Macro assembler AS.
    --asl <asl executable>

    Location of p2bin.
    --p2bin <p2bin executable>

    See README.adoc 'Known limitations' -section for this.
    --fixheader <fixheader executable>

    Specify locations of helper programs
    --bsdiff --xdelta --bdelta

    Print checksums (may be quite noicy)
    (Does not work at the moment)
    --sums

    List all the supported hash functions and exit.
    --list-hashes

    Does not delete temporary files.
    --keep-temp
    (${this} still keeps temporary files in some cases where process has failed.)
"

# Sets the name of the assembly log file if not set from the environment.
: ${ASlog:="AS.log"}

: ${libexecdir:="./"}

msg() { echo -e "$*"; }

warn() {
    echo -e "$*" 1>&2
}

# Maybe overkill for such a simple script
# but we have now a function for exiting.
errexit() {
    if echo "$1" | grep -E '^[0-9]+$' > /dev/null
    then
	# First argument was a number. We use it as an exit code.
        ec="$1"
        shift
    fi
    warn "$*"
    exit "${ec:=1}"
}

push_arr() {
    for i in "$@"
    do
        printf %s\\n "$i" | sed "s/'/'\\\\''/g;1s/^/'/;\$s/\$/' /"
    done
}

find_one() {
    one="$(find "${includedir}" "$libexecdir" "$(dirname "$0")/tools" -type f -name "$1")" 2> /dev/null
    if  [ "$(echo "$one" | wc -l)" -gt 1 ]
    then
        echo -n "$one"
        return 1
    elif [ "$one" ]
    then
        echo -n "$one"
    else
        return 127
    fi
}

check_dep() {
    local x="$(which "$1" 2> /dev/null || echo -n "$1")"

    if [ -f "$x" ] && [ "${x##*.}" = 'py' ] || [ -x "$x" ]
    then
        echo "$x"
        return 0
    elif echo "$1" | grep -q '^[^/]*$' &&  x="$(find_one "$1" | head -n 1)" && [ "$x" ] # TODO: check executable bit if not .py?
    then
        echo "$x"
    elif [ "$2" = "die" ]
    then
        errexit 127 "Aborting: '$1' cannot be found or isn't an executable."
    else
        return 127
    fi
}

list_hashes() {
    check_dep ${rhash:="rhash"} > /dev/null && rhash --list-hashes | awk '{$1 = tolower($1); gsub(/[^a-z0-9]/,"",$1); print $1}'
}

ask_download() {
    # $1 = dest, $2 = uri
    bn="${1##*/}"
    dn="${1%/*}"
    msg "Didn't found '${bn}'.\nProceed with downloading ${bn} and installing it into '${dn}'? [Y/n]"
    read answer && case "$answer" in
        [Yy]|[Yy][Ee][Ss])
            check_dep 'wget' die > /dev/null
            wget -nv -O "$1" "$2" || { warn "Downloading of "$bn" failed."; return 1; }
        ;;
        [Nn][Oo]?)
            msg "Skipped installing of $bn by user request."
            return 1
        ;;
        *)
            [ -z "$answer" ] && wget -O "$1" "$2" || { warn "Downloading of "$bn" failed."; return 1; }
        ;;
    esac || return 1
}

# Path patching using awk.
# While we're at it replace paths with absolute ones.
# Why? I didn't find any simmple way to tell asl
# from which directory to search for includes,
# because there are many of them at least in case of PSII
# and I just cannot give a root directory where all
# the directories reside where the includes are.
path_patch() {
    awk -v "includedir=${includedir}" '{if (/b?include\s+"/) { sub("\"","\"" includedir "/"); gsub("\\\\","/") } print }' "$@"
}

# Creates the final binary into the temp directory
build_bin() {
    if ! [ -e "$temp_bin" ]
    then
        "$p2bin" "$temp_p" "$temp_bin" "$temp_h" > /dev/null \
            && msg "Succesfully created the binary." \
            || errexit "p2bin failed to create the binary. Temporary files left into '${workdir}'"
        fix_bin_header "$temp_bin"
    else
        # We already have the binary. Return succesfully.
        return 0
    fi
}

setup_helper() {
    # $1 = destination, $2 = source file, $3 = source uri
    if helper_compiler="$(check_dep "gcc" 2> /dev/null)" || helper_compiler="$(check_dep "clang" 2> /dev/null)"
    then
        helper_source="$(find_one "$2")"
        status="$?"
        if [ "$status" -eq 0 ]
        then
            if "$helper_compiler" -O3 -w -o "${helperdir}/$1" "$helper_source"
            then
                msg "$1 compiled..."
            else
                warn "Compiling $1 failed."
                return 1
            fi
        elif [ "$status" -eq 2 ]
        then # Multiple choices!
            warn "Multiple sources for ${1} found:\n${helper_source}"
            return 1
        elif [ "$3" ]
        then                                                      # Recursion!
            ask_download "${helperdir}/${2}" "$3" && setup_helper "$1" "$2" || return 1
        else
            warn "Didn't find '${2}', the source file to compile ${1}."
            return 127
        fi
    else
        warn "Couldn't find gcc or clang. Cannot compile ${2}."
        return 127
    fi
}

fix_bin_header() {
    fixheader="$(check_dep "${fixheader:="fixheader.py"}" die)"
    check_dep python3 die 2> /dev/null
    python3 "$fixheader" "$1"
}

setup_p2bin() {
    # Find source and compile the p2bin program if needed.
    # TODO?: Maybe use check_dep?
    if [ ! -e "${p2bin:=p2bin}" ]
    then
        setup_helper p2bin 'p2bin.c' || { rm -r "${workdir}"; errexit "Unable to create p2bin. Aborting..."; }
    fi
}

### Patch creation functions
# Every function takes <oldfile> <newfile> <patchfile>
# TODO: Looking a way to simplify this... Too much repeated commands.
# Also check_deps should only be run if the patch file does not exist.

# Perhaps the most efficient binary diff algo there is.
create_bsdiff() {
    if check_dep "${bsdiff:="bsdiff"}" die
    then
        if [ -f "${workdir}/bsdiff" ] || "$bsdiff" "$1" "$2" "${workdir}/bsdiff"
        then
            [ "${workdir}/bsdiff" != "$3" ] && cp "${workdir}/bsdiff" "$3" && msg "BSDiff created to '$3'..."
        else
            warn "BSDiff failed. '$3' not created."
        fi
    fi
    }

# Xdelta is one of the most common binary diff programs.
create_xdelta() {
    if check_dep "${xdelta:="xdelta3"}" die
    then
        if [ -f "${workdir}/xdelta" ] || "$xdelta" -f -e -S djw -9 -s "$1" "$2" "${workdir}/xdelta"
        then
            [ "${workdir}/xdelta" != "$3" ] && cp "${workdir}/xdelta" "$3" && msg "Xdelta created to '$3'..."
        else
            warn "Xdelta failed. '$3' not created."
        fi
    fi
}

# BDelta. https://github.com/jjwhitney/BDelta
create_bdelta() {
    if check_dep "${bdelta:="bdelta"}" die
    then
        if [ -f "${workdir}/bdelta" ] || "$bdelta" "$1" "$2" "${workdir}/bdelta"
        then
            [ "${workdir}/bdelta" != "$3" ] && cp "${workdir}/bdelta" "$3" && msg "bdelta created to '$3'..."
        else
            warn "bdelta failed. '$3' not created."
        fi
    fi
}

# IPS is a common format too. romhacking.net users might want to use this.
create_ips() {
    # TODO: This function needs an overhaul.
    errexit "iPS patches are unsupported at the moment."
    if check_dep python3
    then
        check_dep "ips-tool" die && ips_py="$(which ips-tool)"
        [ "$ips_py" ] || ips_py="$(find_one 'ips.py')"
        status="$?"
        if [ "$status" -eq 0 ]
        then
            python3 "$ips_py" create "$1" "$2" "$3" > /dev/null &&  msg "ips created to '$3'..." || warn "ips failed"
        elif [ "$status" -eq 127 ]
        then
            ask_download "${helperdir}/ips.py" https://raw.githubusercontent.com/fbeaudet/ips.py/1fcf07a03111bac8ede9493f414765d8e4e32cfe/ips.py && \
            ips_py="${helperdir}/ips.py" && python3 "$ips_py" create "$1" "$2" "$3" > /dev/null &&  msg "ips created to '$3'..." || warn "ips failed."
        else
             warn "ips Creation failed. There seems to be many possible sources for ips.py..."
        fi
    else
        warn "python3 missing. Skipping ips patch creation."
    fi
}

create_diff() {

    # $1 = diff program/format
    # $2 = old file
    # $3 = new file
    # $4 = patch file (destination)

    local p="$1" # ... as in program.
    
    case "$1" in
        ips)
            if ! p="$(check_dep 'lipx.py')"
            then
                ask_download "${helperdir}/lipx.py" 'https://raw.githubusercontent.com/kylon/Lipx/1c01fcff06f1015750ad5461d5c898cba692326d/lipx.py' \
                && p="${helperdir}/lipx.py"
            fi
        ;;
    esac

    if p="$(check_dep "$p" die)"
    then
        local wdtp="${workdir}/${1}"
        if [ ! -f "$wdtp" ]
        then
            case "$1" in
                bsdiff|bdelta)
                    # These diff programs work lovely!
                    "$p" "$2" "$3" "$wdtp"
                ;;
                xdelta)
                    "$p" -f -e -S djw -9 -s "$2" "$3" "$wdtp"
                ;;
                ips)
                    check_dep "python3" die && python3 "$p" -c "$2" "$3" "$wdtp"
                ;;
            esac
        fi
    [ "$wdtp" != "$4" ] && cp "$wdtp" "$4"
    fi
}

### Go trough CLI switches.
while [ "${1:0:1}" = "-" ]
do
    case "$1" in
        --asl)
            [ "$2" ] && check_dep "$2" die
            asl="$2"
            shift
        ;;
        --p2bin)
            [ "$2" ] && check_dep "$2" die
            p2bin="$2"
            shift
        ;;
        --fixheader)
            [ "$2" ] && check_dep "$2" die
            fixheader="$2"
            shift
        ;;
        --bsdiff)
            [ "$2" ] && check_dep "$2" die
            bsdiff="$2"
            shift
        ;;
        --xdelta)
            [ "$2" ] && check_dep "$2" die
            xdelta="$2"
            shift
        ;;
        --bdelta)
            [ "$2" ] && check_dep "$2" die
            bdelta="$2"
            shift
        ;;
        --ips-py|--ipspy)
            [ "$2" ] && check_dep "$2" die
            ips_py="$2"
            shift
        ;;
        --rhash)
            [ "$2" ] && check_dep "$2" die
            rhash="$2"
            shift
        ;;
        --orig-bin|--original)
            [ -e "$2" ] && orig_bin="$2" || errexit "No such file '${2}'."
            shift
        ;;
        --sums)
            sums=true
        ;;
        --keep-temp)
            keeptemp=1
        ;;
        --list-hashes)
            list_hashes | paste -sd ' '
            exit 0
        ;;
        --help)
            echo "${help}"
            exit 0
        ;;
        --)
            shift
            break
        ;;
        *)
            warn "Not a _slightest_ clue what to do with that $1 switch of yours."
            errexit "Tip. Use '--' to break switch searching. Exiting..."
        ;;
    esac
    shift
done

# Test arguments and existence of provided assembly file.
[ "$1" ] || errexit "${usage}"
if [ ! "$2" ]
then
    errexit "No output file(s) specified."
fi

[ -e "$1" ] || errexit "No such file: $1"

workdir="$(mktemp -td AS_tmp_XXXXXX)"

# Set include dir to the directory where the assembly file is in.
includedir="$(readlink -f "$1")"
includedir="${includedir%/*}"
helperdir="${includedir}/tools"
[ ! -e "$helperdir" ] && mkdir "$helperdir"

temp_log="${workdir}/${ASlog##*/}"
temp_p="${workdir}/out.p"
temp_h="${workdir}/out.h"
temp_bin="${workdir}/out.bin"

# Guess the location of original binary (for patches) if not set already.
# So by default it's the same as the main assembly file with extension changed to 'bin'.
: ${orig_bin:="${1%.*}original.bin"}

# Basename of the main assembly file.
baseasm="${1##*/}"
# Same but extension removed. 
base="${baseasm%.*}"
# Temporary main assembly file, which will have patch_patch() applied into.
asmfile="${workdir}/${baseasm}"

setup_p2bin

# Patch and compile the assembly.
path_patch "$1" > "$asmfile" && msg "Path patch applied..." || errexit "Patching failed. '$tempdir' -directory is left undeleted."
check_dep "${asl:="asl"}" die
if "${asl}" -xx -c -A -l -shareout "$temp_h" -o "$temp_p" "$asmfile" > "$temp_log" 2>&1
then
    msg "Source compiled..."
else
    errexit "Source compiling failed. Temporary files are left intact inside '${workdir}' -directory."
fi

# Combine all the files to form the binary
build_bin

shift
# Now we have only the output files left on the command line.
# Let's roll!

hasharray=""

while [ "$1" ]
do
    ext="$(echo "${1##*.}" | tr '[:upper:]' '[:lower:]')" # Filename extension
    case "$ext" in # lovercase
        bin)
            out_bin="$1"
    ;;
        bsdiff|xdelta|bdelta|ips)
            if [ -e "$orig_bin" ]
            then
                # create_diff ips "$orig_bin" "$temp_bin" "$1"
                "create_${ext}" "$orig_bin" "$temp_bin" "$1"
            else
                warn "Can't create $ext patch without a binary to compare to. Maybe use '--orig-bin'?"
            fi
        ;;
        *)
            # Will process sums later using some magic.
            hasharray="$hasharray $(push_arr "$1")"
        ;;
    esac
    shift
done

# We're careful here...
unset ext

eval "set -- $hasharray ''"
# We have now a new $@ which contains sum/hash files to be generated.

supported_hashes="$(list_hashes | paste -sd '|')"

while [ "$1" ]
do
    ext="$(echo "${1##*.}" | tr '[:upper:]' '[:lower:]')" # Hash(?) file extension

    # Kinda dirty...
    if echo "$ext" | egrep -q "^rhash|${supported_hashes}\$"
    then
        ref_file="${1%.*}"
        ref_file="${ref_file##*/}" # Needed when writing filename into hashfile.
        subext="$(echo "${ref_file##*.}" | tr '[:upper:]' '[:lower:]')" # Sub extension.

        case "$subext" in 
            bin|bsdiff|xdelta|bdelta|ips)
                # TODO: Check current directory if a patch exists. If not then use value below.
                # ... or maybe better not to trust on that.
                temp_patch="${workdir}/${subext}"
                temp_hash="${temp_patch}.${ext}"
                temp_rhash="${workdir}/${subext}.rhash"

                if [ -f "$temp_hash" ]
                then
                    # We already have calculated the hash value. Just copy it to the right place.
                    cp "$temp_hash" "$1"
                else

                    if [ "$subext" = "bin" ]
                    then
                        tohash="$temp_bin"
                    elif [ ! -f "$temp_patch" ]
                    then
                        # We don't have a file from where to calculate the hash.
                        if [ -e "$orig_bin" ]
                        then
                            "create_${subext}" "$orig_bin" "$temp_bin" "$temp_patch"
                        else
                            warn "Need an original binary (--orig-bin), because a temporary patch is needed to be able to create hash sum out of it."
                            warn "Skipping creation of '$1'"
                            shift
                            continue
                        fi
                        tohash="$temp_patch"
                    fi

                    if check_dep "${rhash:="rhash"}"
                    then
                        "$rhash" --bsd -a "$tohash" | tee "$temp_rhash" | awk -v "file=${ref_file}" '{algo = tolower($1); sub(/-/,"",algo); print algo, $4 "  " file}' | while read hash_line
                        do
                            echo "$(echo "$hash_line" | cut -d ' ' -f 2-)" > "${workdir}/${subext}.$(echo "$hash_line" | cut -d ' ' -f 1)"
                        done
                    else # Fallback to sha/md utils.
                        case "$ext" in
                            sha*)
                                if check_dep "${ext}sum"
                                then
                                    echo "$(${ext}sum "$tohash" | cut -d ' ' -f 1)  ${ref_file}" > "${temp_hash}"
                                else
                                    warn "No tool to generate ${ext}sum. To support all hash functions intall rhash or make sure it's in your PATH."
                                fi
                            ;;
                        esac
                    fi
                fi
                cp "$temp_hash" "$1"
            ;;
            *)
                warn "Unknown extension: ${subext}"
            ;;
        esac
    else
        warn "File type of '${ext}' is unknown. Skipping..."
    fi
    shift
done


[ "$out_bin" ] && mv "$temp_bin" "$out_bin" && msg "Binary is located at '${out_bin}'."

[ "$keeptemp" ] && msg "Temp files left into '${workdir}'" || rm -r "$workdir"
