#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import io
import os
import sys
import re
import textwrap
import ply.lex as lex
import ply.yacc as yacc
import logging
import json

class ScriptLexer(object):
    tokens = (
        'ROOT', 'LOCATION', 'INSTRUCTION',
        'HEXADECIMAL','STRING',
        'EVENT', 'MINUS', 'COMMA'
    )

    t_ignore = '\r\n'

    def __init__(self, **kwargs):
        self._errors = []
        self._line = []
        self._lines = []
        self.lexer = lex.lex(module=self, **kwargs)

    def t_ROOT(self, t):
        r"GameScript"
        return t

    def t_LOCATION(self, t):
        r"loc_[0-9A-Fa-f]+"
        t.value=hex(int(t.value[4:],16))
        return t

    def t_EVENT(self, t):
        r"EventFlag_[A-Za-z0-9]+"
        return t

    def t_INSTRUCTION(self, t):
        r"(dc.[b|w|s|l]|even|align)"
        return t

    def t_STRING(self, t):
        r"\"(.*)\""
        return t

    def t_HEXADECIMAL(self, t):
        r"\$[0-9A-Fa-f][0-9A-Fa-f]"
        return t
    
    def t_MINUS(self, t):
        r"\-"
        return t
    
    def t_COMMA(self, t):
        r"\,"
        return t

    def t_error(self, t):
        #self._errors.append([t, t.lexpos])
        #print('Illegal Token:' + t.value[0])
        t.lexer.skip(1)

    # Test it output
    def test(self, data):
        self.lexer.input(data)
        while True:
            tok = self.lexer.token()
            if not tok:
                break
            #print(tok)

    def extractStrings(self, data):
        strings=[]
        self.lexer.input(data)
        while True:
            tok = self.lexer.token()
            if not tok:
                break
            if tok.type == "STRING":
                strings.append((tok.value[1:-1], tok.value[1:-1]))
        print(strings)
        strings=dict(strings)
        with open("./scripts/dialogs.json", "w") as write_file:
            json.dump(strings, write_file, indent=4)


if __name__ == '__main__':
    """ Program Command Line """
    cmd = argparse.ArgumentParser(
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description=textwrap.dedent('''\
            [PYSEGA] SCRIPT PARSER FOR 68000 ASSEMBLY
            --------------------------------------------------
            An Sega Genesis 60000 Assembler Script Parser for
            use on romhacking and translation projects
        ''')
    )
    cmd.add_argument(
        'infile',
        nargs='?',
        type=argparse.FileType('r'),
        default=sys.stdin,
        help='Assembler code file.'
    )

    """ Program Main Routine """
    args = cmd.parse_args()

    if(args.infile.name != '<stdin>'):
        with args.infile as asm:
            asmcontent = asm.read()
        #parser = ScriptParser(asmcontent)
        parser = ScriptLexer()
        #parser.test(asmcontent)
        parser.extractStrings(asmcontent)
    else:
        cmd.print_help()