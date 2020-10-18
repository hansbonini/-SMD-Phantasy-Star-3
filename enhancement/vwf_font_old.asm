mem_1 = ramaddr($FFFFFF80)
mem_2 = ramaddr($FFFFFF86)
mem_3 = ramaddr($FFFFE400) ; VRAM ADDRESS
mem_4 = ramaddr($FFFFFF88)
mem_5 = ramaddr($FFFFFF60)


gfx_font_16_8:
    binclude "gfx/vwf/font_16x8.bin"
    even

font_pre_render:
    cmp.w		#$0, $32(a6)
    bne.s		vwf_continue
    rts
vwf_continue:
    movem.l d0-d7/a1-a7,-(sp)
    ;move.b  #0,(mem_5).w
    cmp.b   #$FC,d1
    beq.w   font_pre_render_copy_vram
    cmp.b   #$F8,d1
    beq.s   font_pre_render_linebreak
    cmp.b   #$EC,d1
    beq.s   font_pre_render_clear
    bra.w   font_pre_render_char
font_pre_render_clear:
    movem.l d0-d7/a0-a7,-(sp)
    moveq   #$20, d0
    move.l  #$14A0, d1
    lea     (ram_artnem_sega).w, a0
    jsr     LoadDataInVRAMWithOffset
    movem.l (sp)+,d0-d7/a0-a7
    clr.l   d0
    move.l  d0,(mem_1).w
    move.l  d0,(mem_2).w
    lea     (mem_3).l,a1
    add.w   #$800,a1
    lea     (mem_3).l,a2
    moveq   #0,d7
    move.w  #$800,d7
font_pre_render_clear_0:
    move.b  (a1)+,(a2)+
    dbf     d7,font_pre_render_clear_0
    lea     (mem_3).l,a2
    add.w   #$800,a2
    movem.l a2,(mem_1).w
    moveq   #0,d7
    move.w  #$800,d7
font_pre_render_clear_1:
    move.b  #$22,(a2)+
    dbf     d7,font_pre_render_clear_1
    bra.w   font_pre_render_savereturn
font_pre_render_linebreak:
    clr.l   d0
    move.w  d0,(mem_2).w
    move.l  (mem_1).l,d2
    add.l   #$000020,d2
    andi.l  #$FFFFFFF0,d2
    move.l  d2,(mem_1).w
    moveq   #0,d2
    move.b  #$A5,(mem_5).w
    bra.w   font_pre_render_savereturn
font_pre_render_char:
    sub.w   #$20,d1
    mulu.w  #$10,d1
    lea     (gfx_font_16_8).l,a1
    add.w   d1,a1
    lea     (mem_3).l,a2
    move.w  ($FFFF82).l,d0
    cmp.w   #$0000,d0
    bne.s   font_pre_render_continue
    bra.s   font_pre_render_start
font_pre_render_continue:
    move.w  d0,a2
    moveq   #0,d3
    moveq   #15,d7
    bra.s   font_pre_render_draw_0
font_pre_render_start:
    move.l  #$14A0, d7
font_pre_render_start_clear_1:
    move.b  #$22,(a2)+
    dbf     d7,font_pre_render_start_clear_1
    lea     (mem_3).l,a2
    moveq   #0,d7
    moveq   #0,d3
    moveq   #15,d7
font_pre_render_draw_0:
    moveq   #7,d6
    move.b  (a1)+,d2
font_pre_render_draw_1:
    asl.b   #1,d2
    bcc.s   font_pre_render_draw_1_tile_black
    lsl.l   #4,d3
    ori.l   #$1,d3
    bra     font_pre_render_draw_1_next
font_pre_render_draw_1_tile_black:
    lsl.l   #4,d3
    ori.l   #$2,d3
font_pre_render_draw_1_next:
    dbf     d6,font_pre_render_draw_1
    move.l  d3,(a2)+
    cmp.b   #8,d7
    beq.s   font_pre_render_draw_0_lowertile
    bra.s   font_pre_render_draw_0_next
font_pre_render_draw_0_lowertile:
    sub.w   #$20,a2
    add.w   #$400,a2
font_pre_render_draw_0_next:
    dbf     d7,font_pre_render_draw_0
    sub.w   #$400,a2
    move.l  a2,(mem_1).w
    move.b  (mem_2).l,d4
    add.b   #$1,d4
    cmp.b   #$A5,(mem_5).l
    bne.s   font_pre_render_not_line2
    cmp.b   #26,d4
    beq.s   font_pre_render_newline2
    bra.s   continue_pre_render
font_pre_render_not_line2:
    cmp.b   #31,d4 ; 31 chars per line
    beq.s   font_pre_render_newline
continue_pre_render:
    move.b  d4,(mem_2).w
    move.b  (mem_4).l,d4
    add.b   #$1,d4
    move.b  d4,(mem_4).w
    bra.s   font_pre_render_savereturn
font_pre_render_newline2:
    move.b  #$0,(mem_5).w
font_pre_render_newline:
    add.w   #$400,a2
    move.l  a2,(mem_1).w
    move.b  #$0,(mem_2).w
font_pre_render_savereturn:
    movem.l (sp)+,d0-d7/a1-a7
    bra.s   font_pre_render_end
font_pre_render_copy_vram:
    movem.l d0-d7/a0-a7,-(sp)
    moveq   #$20, d0
    move.l  #$14A0, d1
    lea     (ram_artnem_sega).w, a0
    jsr     LoadDataInVRAMWithOffset
    movem.l (sp)+,d0-d7/a0-a7
    bra.w   dialog_render
font_pre_render_end:
    rts
dialog_render:
    bclr    #7,1(a6)
    bclr    #6,1(a6)
    move.l  #$FF9CF2,a2
    move.l  #$FF9D3A,a3
    move.w  #35,d4
    move.w  #$0001,d3
    move.w  #$008F,d1
dialog_render_1:
    or.w    d0,d3
    or.w    d0,d1
    move.w  d3,(a2)+
    move.w  d3,d6
    add.w   #30,d6
    move.w  d6,(a3)+
    cmp.b   #30,d3
    beq.s   dialog_render_1_newlinevram
    bra.s   dialog_render_1_next
dialog_render_1_newlinevram:
    add.w   #32,d3
dialog_render_1_next:
    add.w   #$1,d3
    dbra    d4,dialog_render_1
    move.l  #$FF9D88,a2
    move.l  #$FF9DD0,a3
    move.w  #30,d4
    move.w  #$0040,d3
    move.w  #$008F,d1
dialog_render_2:
    bra.s   dialog_render_2_next_end
    or.w    d0,d3
    or.w    d0,d1
    move.w  d3,(a2)+
    move.w  d3,d6
    add.w   #30,d6
    move.w  d6,(a3)+
    cmp.b   #$80,d3
    beq.s   dialog_render_2_newlinevram
    bra.s   dialog_render_2_next
dialog_render_2_newlinevram:
    add.w   #30,d3
dialog_render_2_next:
    add.w   #$1,d3
    dbra    d4,dialog_render_2
dialog_render_2_next_end:
    movem.l (sp)+,d0-d7/a1-a7
    move.l  #$00000000,(mem_1).w
    move.l  #$00000000,(mem_2).w
    moveq   #0,d1
    moveq   #0,d4
    move.b  #$FC,d1
    move.b  #$0D,d4
    nop
    rts

vwf_font_draw:
    rts