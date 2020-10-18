    if (*) <> 0
	fatal	"Start of ROM is at address $\{*}, but it should be at address 0."
	endif

VectorTable:
	dc.l	system_stack, EntryPoint, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	HBlank, ErrorTrap, VBlank, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap
	dc.l	ErrorTrap, ErrorTrap, ErrorTrap, ErrorTrap

Header:
	dc.b	"SEGA MEGA DRIVE " ; Console name
	dc.b 	"(C)SEGA 1991.APL" ; Copyright/Date
	dc.b 	"TOKINO          KEISHOUSHA      PHANTASY STAR 3 " ; Domestic name
	dc.b 	"PHANTASY STAR 3 GENERATIONS     OF DOOM         " ; International name
	dc.b 	"GM 1303-01    "   ; Version

Checksum:
	dc.w	$3A33		; Checksum
	dc.b 	"J               " ; I/O Support
	dc.l 	StartOfRom		; ROM Start


ROMEndLoc:
	dc.l	EndOfRom-1		; ROM End
	dc.l 	ram_start&$FFFFFF		; RAM Start
	dc.l 	ram_end&$FFFFFF		; RAM End
	dc.l 	$5241F820		; Backup RAM ID
	dc.l 	$200001		; Backup RAM start address
	dc.l 	$203FFF		; Backup RAM end address
	dc.b 	"            "	; Modem support
	dc.b 	"                                        "	; Notes
	dc.b 	"UE              " ; Country
EndOfHeader:
	if (*) <> $200
	fatal	"End of header is at address $\{*}, but it should be at address $200. The header + the vector table must be exactly 512 bytes long"
	endif


ErrorTrap:
	nop
	nop
	nop
	nop


EntryPoint:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	tst.l	hw_port_1_control-1
loc_226:
	bne.w	loc_2B8
	tst.w	hw_expansion_control-1
	bne.s	loc_226
	lea	SetupValues(pc), a5
	movem.l	(a5)+, d5-a4
	move.b	hw_version-z80_bus_request(a1), d0	; get hardware version
	andi.b	#$F, d0
	beq.s	SkipSecurity			; branch if we're using the first hardware model
	move.l	#'SEGA', security_addr-z80_bus_request(a1)	; satisfy the TMSS so that VDP access is enabled
SkipSecurity:
	move.w	(a4), d0	; Read the VDP to see if it works (if we don't put the bytes "SEGA" into the TMSS, access to the VDP will cause the 68000 to lock up)
	moveq	#0, d0
	movea.l	d0, a6
	moveq	#(VDPInitValuesEnd-VDPInitValues)-1, d1
VDPInitLoop:
	move.b	(a5)+, d5
	move.w	d5, (a4)
	add.w	d7, d5
	dbf	d1, VDPInitLoop

	move.l	#$40000080, (a4)
	move.w	d0, (a3)
	move.w	d7, (a1)
	move.w	d7, (a2)
-
	btst	d0, (a1)
	bne.s	-			; wait for Z80
	moveq	#(Z80StartupCode_End-Z80StartupCode)-1, d2
Z80InitLoop:
	move.b	(a5)+, (a0)+
	dbf	d2, Z80InitLoop

	move.w	d0, (a2)
	move.w	d0, (a1)	; start the Z80
	move.w	d7, (a2)	; reset the Z80
ClrRAMLoop:
	move.l	d0, -(a6)
	dbf	d6, ClrRAMLoop

	move.l	#$81048F02, (a4)
	move.l	#$C0000000, (a4)
	moveq	#$1F, d3
ClrCRAMLoop:
	move.l	d0, (a3)
	dbf	d3, ClrCRAMLoop

	move.l	#$40000010, (a4)
	moveq	#$13, d4
ClrVSRAMLoop:
	move.l	d0, (a3)
	dbf	d4, ClrVSRAMLoop

	moveq	#(PSGInitValues_End-PSGInitValues)-1, d5
PSGInitLoop:
	move.b	(a5)+, $11(a3)	; reset the PSG
	dbf	d5, PSGInitLoop

	move.w	d0, (a2)
	movem.l	(a6), d0-a6	; clear all registers
	move	#$2700, sr
loc_2B8:
	lea	(ROMEndLoc).w, a0
	move.l	(a0), d0
	addq.l	#1, d0
	lea	(EndOfHeader).w, a0
	sub.l	a0, d0
	asr.l	#1, d0
	move.w	d0, d2
	subq.w	#1, d2
	swap	d0
	moveq	#0, d1
-
	add.w	(a0)+, d1
	dbf	d2, -
	dbf	d0, -

	cmp.w	(Checksum).w, d1
	beq.s	ChecksumOK
	move.l	d1, -(sp)
	jsr	(MainGameVDPSetup).l
	move.l	#$C0000000, vdp_control_port
	moveq	#$3F, d7
-
	move.w	#$E, vdp_data_port
	dbf	d7, -
	move.l	(sp)+, d1

ChecksumErrorLoop:
	bra.s	ChecksumErrorLoop


ChecksumOK:
	move.b	hw_version, d0
	andi.b	#$F, d0
	beq.s	GameInit
	move.l	#'SEGA', security_addr