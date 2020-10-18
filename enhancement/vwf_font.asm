font_buffer     = ramaddr($FFFFF600)
buffer_start    = ramaddr($FFFFE400) ; VWF Buffer on RAM
buffer_end      = ramaddr($FFFFFBC0) ;

gfx_font_16_8:
    binclude    "gfx/vwf/font_16x8_4bpp.bin"
    even

vwf_table:
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $02 ; SPACE
    dc.b        $02 ; !
    dc.b        $03 ; "
    dc.b        $07 ; #
    dc.b        $05 ; $
    dc.b        $06 ; %
    dc.b        $05 ; &
    dc.b        $01 ; '
    dc.b        $03 ; (
    dc.b        $03 ; )
    dc.b        $03 ; *
    dc.b        $05 ; +
    dc.b        $03 ; ,
    dc.b        $05 ; -
    dc.b        $02 ; .
    dc.b        $04 ; /
    dc.b        $04 ; 0
    dc.b        $03 ; 1
    dc.b        $04 ; 2
    dc.b        $04 ; 3
    dc.b        $04 ; 4
    dc.b        $04 ; 5
    dc.b        $04 ; 6
    dc.b        $04 ; 7
    dc.b        $04 ; 8
    dc.b        $04 ; 9
    dc.b        $01 ; :
    dc.b        $02 ; ;
    dc.b        $06 ; <
    dc.b        $05 ; =
    dc.b        $06 ; >
    dc.b        $05 ; ?
    dc.b        $07 ; @
    dc.b        $04 ; A
    dc.b        $04 ; B
    dc.b        $04 ; C
    dc.b        $04 ; D
    dc.b        $04 ; E
    dc.b        $04 ; F
    dc.b        $04 ; G
    dc.b        $05 ; H
    dc.b        $03 ; I
    dc.b        $04 ; J
    dc.b        $05 ; K
    dc.b        $04 ; L    
    dc.b        $05 ; M
    dc.b        $05 ; N
    dc.b        $05 ; O
    dc.b        $05 ; P
    dc.b        $05 ; Q
    dc.b        $05 ; R
    dc.b        $05 ; S
    dc.b        $05 ; T
    dc.b        $05 ; U
    dc.b        $05 ; V
    dc.b        $05 ; W
    dc.b        $05 ; X   
    dc.b        $05 ; Y
    dc.b        $05 ; Z
    dc.b        $03 ; [
    dc.b        $05 ; \
    dc.b        $03 ; ]
    dc.b        $05 ; ^
    dc.b        $06 ; _
    dc.b        $02 ; `
    dc.b        $00
    dc.b        $04 ; a
    dc.b        $04 ; b
    dc.b        $04 ; c
    dc.b        $04 ; d
    dc.b        $04 ; e
    dc.b        $03 ; f
    dc.b        $04 ; g
    dc.b        $04 ; h
    dc.b        $01 ; i
    dc.b        $02 ; j
    dc.b        $04 ; k
    dc.b        $01 ; l
    dc.b        $05 ; m
    dc.b        $04 ; n
    dc.b        $04 ; o
    dc.b        $04 ; p
    dc.b        $04 ; q
    dc.b        $04 ; r
    dc.b        $04 ; s
    dc.b        $02 ; t
    dc.b        $04 ; u
    dc.b        $04 ; v
    dc.b        $05 ; w
    dc.b        $05 ; x
    dc.b        $04 ; y
    dc.b        $04 ; z
    dc.b        $02 ; í
    dc.b        $01 ; |
    dc.b        $02 ; }
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    dc.b        $00
    even

vwf_clear:
    movem.l     d0-d7/a0-a7,-(sp)
    clr.l       d0
    clr.l       d1
    clr.l       d6
    clr.l       d7
clear_start:
    lea         (buffer_start).l,a0
    move.w      #5888,d7
    divu        #32,d7
-
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    move.l      #$22222222,(a0)+
    dbf         d7,-
    lea         (buffer_start).l,a2
    lea         (buffer_end).l,a2
    move.w      #5888,d1
    move.w      #64,d0
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
copy_decorations_tiles:
    move.w      #11,d7
    lea         (buffer_start).l,a0
    adda.w      #5664,a0
    lea         (gfx_decorations).l,a1
-
    move.l      (a1),(a0)
    move.l      4(a1),4(a0)
    move.l      8(a1),8(a0)
    move.l      12(a1),12(a0)
    move.l      16(a1),16(a0)
    move.l      20(a1),20(a0)
    move.l      24(a1),24(a0)
    move.l      28(a1),28(a0)
    adda.w      #32,a1
    adda.w      #32,a0
    dbra        d7,-
vwf_clear_end:
    lea         (buffer_start).l,a2
    lea         (buffer_end).l,a2
    move.w      #32,d0
    move.w      #6368,d1
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
    move.w      #0,($FFFFF2).l
    move.w      #32,($FFFFF4).l
    move.w      #0,($FFFFF6).l
    move.w      #32,($FFFFF8).l
    movem.l     (sp)+,d0-d7/a0-a7
    rts

vwf_draw_char:
    cmp.w       #0,($FFFFF8).l
    bne         vwf_draw_char_continue
    jsr         vwf_clear
vwf_draw_char_continue
    move.b      d1,d7
    move.w      ($FFFFF2).l,d6    
    mulu.w      #64,d1
    lea         gfx_font_16_8,a0
    adda.w      d1,a0
    movea.l     a0,a4
    adda.w      #32,a4
    lea         (buffer_start).l,a1
    lea         (buffer_start).l,a2
    adda.w      #1952,a2     ; 30 tiles * 32 (max line) * 2 lines per char + 32
    move.w      ($FFFFF8).l,d0
    adda.w      d0,a1
    adda.w      d0,a2
    divu.w      #2,d6
    adda.w      d6,a1
    adda.w      d6,a2
    clr.w       d6      
    adda.w      #32,a2
    cmp.b       #$7C,d7
    bgt         vwf_config_default
    clr.b       d4
    move.l      #vwf_table,d4
    add.b       d7,d4
    movea.l     d4,a5
    clr.w       d4
    move.b      (a5),d2
    move.w      d2,d3
    clr.w       d6
    move.w      ($FFFFF2).l,d6
    andi.b      #1,d6
    beq         loop1
    jmp         loop3
vwf_config_default:
    move.w      #7,d2
    move.w      d2,d3
    clr.w       d6
    move.w      ($FFFFF2).l,d6
    andi.b      #1,d6
    beq         loop1
    jmp         loop3
loop1_odd_write:
    clr.w       d6
    move.b      (a0),d6
    andi.b      #$F2,d6
    move.b      d6,(a1)
    move.b      4(a0),d6
    andi.b      #$F2,d6
    move.b      d6,4(a1)
    move.b      8(a0),d6
    andi.b      #$F2,d6
    move.b      d6,8(a1)
    move.b      12(a0),d6
    andi.b      #$F2,d6
    move.b      d6,12(a1)
    move.b      16(a0),d6
    andi.b      #$F2,d6
    move.b      d6,16(a1)
    move.b      20(a0),d6
    andi.b      #$F2,d6
    move.b      d6,20(a1)
    move.b      24(a0),d6
    andi.b      #$F2,d6
    move.b      d6,24(a1)
    move.b      28(a0),d6
    andi.b      #$F2,d6
    move.b      d6,28(a1)
    bra         loop1_continue
loop1:
    move.w      ($FFFFF0).l,d6
    andi.b      #1,d6
    beq         loop1_odd_write
loop1_even_write:
    clr.w       d6
    move.b      (a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,(a1)
    add.b       d6,(a1)
    move.b      4(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,4(a1)
    add.b       d6,4(a1)
    move.b      8(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,8(a1)
    add.b       d6,8(a1)
    move.b      12(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,12(a1)
    add.b       d6,12(a1)
    move.b      16(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,16(a1)
    add.b       d6,16(a1)
    move.b      20(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,20(a1)
    add.b       d6,20(a1)
    move.b      24(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,24(a1)
    add.b       d6,24(a1)
    move.b      28(a0),d6
    andi.b      #$0F,d6
    andi.b      #$F0,28(a1)
    add.b       d6,28(a1)
    adda.w      #1,a0
    adda.w      #1,a1
loop1_continue:
    add.w       #1,($FFFFF0).l
    add.w       #1,($FFFFF2).l
    cmp.w       #8,($FFFFF2).l
    blt.s       loop1_end       
    add.w       #32,($FFFFF4).l
    adda.w      #32,a1
    move.w      ($FFFFF2).l,d5
    divu.w      #2,d5
    suba.w      d5,a1
    move.w      #0,($FFFFF2).l
loop1_end: 
    dbra        d2,loop1
    move.w      #0,($FFFFF0).l
    bra         loop2
loop2_odd_write:
    clr.w       d6
    move.b      (a4),d6
    andi.b      #$F2,d6
    move.b      d6,(a2)
    move.b      4(a4),d6
    andi.b      #$F2,d6
    move.b      d6,4(a2)
    move.b      8(a4),d6
    andi.b      #$F2,d6
    move.b      d6,8(a2)
    move.b      12(a4),d6
    andi.b      #$F2,d6
    move.b      d6,12(a2)
    move.b      16(a4),d6
    andi.b      #$F2,d6
    move.b      d6,16(a2)
    move.b      20(a4),d6
    andi.b      #$F2,d6
    move.b      d6,20(a2)
    move.b      24(a4),d6
    andi.b      #$F2,d6
    move.b      d6,24(a2)
    move.b      28(a4),d6
    andi.b      #$F2,d6
    move.b      d6,28(a2)
    bra         loop2_continue
loop2:
    move.w      ($FFFFF0).l,d6
    andi.b      #1,d6
    beq         loop2_odd_write
loop2_even_write:
    clr.w       d6
    move.b      (a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,(a2)
    add.b       d6,(a2)
    move.b      4(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,4(a2)
    add.b       d6,4(a2)
    move.b      8(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,8(a2)
    add.b       d6,8(a2)
    move.b      12(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,12(a2)
    add.b       d6,12(a2)
    move.b      16(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,16(a2)
    add.b       d6,16(a2)
    move.b      20(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,20(a2)
    add.b       d6,20(a2)
    move.b      24(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,24(a2)
    add.b       d6,24(a2)
    move.b      28(a4),d6
    andi.b      #$0F,d6
    andi.b      #$F0,28(a2)
    add.b       d6,28(a2)
    adda.w      #1,a4
    adda.w      #1,a2
loop2_continue:
    add.w       #1,($FFFFF0).l
    add.w       #1,($FFFFF6).l
    cmp.w       #8,($FFFFF6).l
    blt.s       loop2_end       
    add.w       #32,($FFFFF8).l
    adda.w      #32,a2
    move.w      ($FFFFF6).l,d5
    divu.w      #2,d5
    suba.w      d5,a2
    move.w      #0,($FFFFF6).l
loop2_end: 
    dbra        d3,loop2
    move.w      #0,($FFFFF0).l
    jmp         vwf_draw_char_load_to_vram

loop3_odd_write:
    clr.w       d6
    move.b      (a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,(a1)
    move.b      4(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,4(a1)
    move.b      8(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,8(a1)
    move.b      12(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,12(a1)
    move.b      16(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,16(a1)
    move.b      20(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,20(a1)
    move.b      24(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,24(a1)
    move.b      28(a0),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,28(a1)
    adda.w      #1,a0
    bra         loop3_continue
loop3:
    move.w      ($FFFFF0).l,d6
    andi.b      #1,d6
    bne         loop3_odd_write
loop3_even_write:
    clr.w       d6
    move.b      (a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,(a1)
    add.b       d6,(a1)
    move.b      4(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,4(a1)
    add.b       d6,4(a1)
    move.b      8(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,8(a1)
    add.b       d6,8(a1)
    move.b      12(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,12(a1)
    add.b       d6,12(a1)
    move.b      16(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,16(a1)
    add.b       d6,16(a1)
    move.b      20(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,20(a1)
    add.b       d6,20(a1)
    move.b      24(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,24(a1)
    add.b       d6,24(a1)
    move.b      28(a0),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,28(a1)
    add.b       d6,28(a1)
    adda.w      #1,a1
loop3_continue:
    add.w       #1,($FFFFF0).l
    add.w       #1,($FFFFF2).l
    cmp.w       #8,($FFFFF2).l
    blt.s       loop3_end       
    add.w       #32,($FFFFF4).l
    adda.w      #32,a1
    move.w      ($FFFFF2).l,d5
    divu.w      #2,d5
    suba.w      d5,a1
    move.w      #0,($FFFFF2).l
loop3_end: 
    dbra        d2,loop3
    move.w      #0,($FFFFF0).l
    bra         loop4
loop4_odd_write:
    clr.w       d6
    move.b      (a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,(a2)
    move.b      4(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,4(a2)
    move.b      8(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,8(a2)
    move.b      12(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,12(a2)
    move.b      16(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,16(a2)
    move.b      20(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,20(a2)
    move.b      24(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,24(a2)
    move.b      28(a4),d6
    andi.b      #$0F,d6
    lsl.b       #4,d6
    andi.b      #$F2,d6
    move.b      d6,28(a2)
    adda.w      #1,a4
    bra         loop4_continue
loop4:
    move.w      ($FFFFF0).l,d6
    andi.b      #1,d6
    bne         loop4_odd_write
loop4_even_write:
    clr.w       d6
    move.b      (a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,(a2)
    add.b       d6,(a2)
    move.b      4(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,4(a2)
    add.b       d6,4(a2)
    move.b      8(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,8(a2)
    add.b       d6,8(a2)
    move.b      12(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,12(a2)
    add.b       d6,12(a2)
    move.b      16(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,16(a2)
    add.b       d6,16(a2)
    move.b      20(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,20(a2)
    add.b       d6,20(a2)
    move.b      24(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,24(a2)
    add.b       d6,24(a2)
    move.b      28(a4),d6
    andi.b      #$F2,d6
    lsr.b       #4,d6
    andi.b      #$F0,28(a2)
    add.b       d6,28(a2)
    adda.w      #1,a2
loop4_continue:
    add.w       #1,($FFFFF0).l
    add.w       #1,($FFFFF6).l
    cmp.w       #8,($FFFFF6).l
    blt.s       loop4_end       
    add.w       #32,($FFFFF8).l
    adda.w      #32,a2
    move.w      ($FFFFF6).l,d5
    divu.w      #2,d5
    suba.w      d5,a2
    move.w      #0,($FFFFF6).l
loop4_end: 
    dbra        d3,loop4
    move.w      #0,($FFFFF0).l
vwf_draw_char_load_to_vram:
    move.w      #32,d0
    move.w      #5344,d1 ; 167 tiles (max window)
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
vwf_draw_char_end:
    rts

vwf_draw:
    cmp.w       #0,($FFFFF8).l
    bne         vwf_draw_continue
    jsr         vwf_clear
vwf_draw_continue   
    mulu.w      #64,d1
    lea         gfx_font_16_8,a0
    adda.w      d1,a0
    lea         buffer_start,a1
    move.w      ($FFFFF8).l,d0
    adda.w      d0,a1
vwf_draw_upper:
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    adda.w      #1952,a1     ; 30 tiles * 32 (max line) * 2 lines per char + 32
vwf_draw_lower:
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
    move.l      (a0)+,(a1)+
vwf_draw_load_to_vram:
    move.w      #32,d0
    move.w      #5888,d1 ; 167 tiles (max window)
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
    add.w       #32,($FFFFF8).l  
    rts

vwf_init:
    ;cmp.w       #SceneID_GameSelect,(scene_id).w
    ;beq         load_original_font
    jsr         vwf_render
    rts

end_string:
    jsr         vwf_tilemap
    bra.s       vwf_render_end
char_clear:
    ;jsr         vwf_clear
    bra.s       vwf_render_end
vwf_render:
    movem.l     d0-d7/a0-a7,-(sp)
    cmp.b       #$F8,d1
    beq.s       new_line
    cmp.b       #$FC,d1
    beq.s       end_string
    cmp.b       #$EC,d1
    beq.s       char_clear
    jsr         vwf_draw_char
vwf_render_end:
    movem.l     (sp)+,d0-d7/a0-a7
    rts
new_line:
    move.w      #1160,d1
    move.w      #0,($FFFFF2).l
    move.w      #0,($FFFFF6).l
    move.w      #1120,($FFFFF4).l
    move.w      #1120,($FFFFF8).l
    move.w      #32,d0
    move.w      #6368,d1 ; 167 tiles (max window)
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
    add.w       #32,($FFFFF4).l
    add.w       #32,($FFFFF8).l
    jmp         vwf_render_end

vwf_tilemap:
    ; CLEAR WINDOW
    move.w      #0,($FFFFF2).l
    move.w      #0,($FFFFF4).l
    move.w      #0,($FFFFF6).l
    move.w      #0,($FFFFF8).l
    jmp         vwf_tilemap_check_sreen

vwf_tilemap_set_gameselect_screen:
    movea.l     #$FF9AB6,a1
    jmp         vwf_tilemap_prepare_dialogue

vwf_tilemap_check_sreen:
    ; CURRENT WINDOW BUFFER
    cmp.w       #SceneID_GameSelect,(scene_id).w
    beq         vwf_tilemap_set_gameselect_screen
    movea.l     #$FF9D26,a1

vwf_tilemap_prepare_dialogue:
    ; CLEAR LINES
    movea.l     a1,a2
    suba.w      #54,a2
    move.w      #158,d0
    move.w      #$80B0,d1
-
    move.w      d1,(a2)+
    dbra        d0,-

    ; DRAW TOP WINDOW BORDER
    movea.l     a1,a2
    suba.w      #54,a2
    move.w      #19,d0
    cmp.w       #SceneID_GameSelect,(scene_id).w
    beq.s       vwf_tilemap_config_tb_as_system
vwf_tilemap_config_tb_as_dialogue:
    move.w      #$80B2,(a2)+
    move.w      #$80B3,(a2)+
    move.w      #$80B4,(a2)+
    move.w      #$80B5,(a2)+
    move.w      #$80B6,(a2)+
    move.w      #$80BC,(a2)+
    move.w      #$80BC,d1
    bra         vwf_tilemap_draw_top_border
vwf_tilemap_config_tb_as_system:
    move.w      #$80B7,(a2)+
    move.w      #$80B8,(a2)+
    move.w      #$80B9,(a2)+
    move.w      #$80BA,(a2)+
    move.w      #$80BB,(a2)+
    move.w      #$80BC,(a2)+
    move.w      #$80BC,d1
    bra         vwf_tilemap_draw_top_border
vwf_tilemap_draw_top_border:
-
    move.w      d1,(a2)+
    dbra        d0,-

vwf_tilemap_draw_dialogue:
    ; DRAW LINE 1
    movea.l     a1,a2
    move.w      #23,d0
    move.w      #$8001,d1
-
    move.w      d1,(a2)+
    add.w       #1,d1
    dbra        d0,-

    ; DRAW LINE 2
    movea.l     a1,a2
    adda.w      #52,a2
    move.w      #23,d0
    move.w      #$803F,d1
-
    move.w      d1,(a2)+
    add.w       #1,d1
    dbra        d0,-

    ; DRAW LINE 3
    movea.l     a1,a2
    adda.w      #100,a2
    move.w      #38,d0
    move.w      #$8022,d1
-
    move.w      d1,(a2)+
    add.w       #1,d1
    dbra        d0,-

    ; DRAW LINE 4
    movea.l     a1,a2
    adda.w      #154,a2
    move.w      #38,d0
    move.w      #$8061,d1
-
    move.w      d1,(a2)+
    add.w       #1,d1
    dbra        d0,-

     ; DRAW BOTTOM WINDOW BORDER
    movea.l     a1,a2
    adda.l      #206,a2
    move.w      #25,d0
    move.w      #$80BD,d1
-
    move.w      d1,(a2)+
    dbra        d0,-

    rts

load_original_font:
    movem.l     d0-d7/a0-a7,-(sp)
    movea.l     (Art_Font).l,a1
    move.w      #32,d0
    move.w      #5344,d1
    lea         (ram_artnem_sega).w, a0
    jsr         LoadDataInVRAMWithOffset
    movem.l     (sp)+,d0-d7/a0-a7
    rts


even
gfx_decorations:
    binclude    "gfx/vwf/tile_decorations.bin"
    even