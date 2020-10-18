VBlank:
	movem.l	d0-a7, -(sp)
	bset	#7, (global_status_flags).w
	btst	#6, (global_status_flags_3).w	; are we moving data into VRAM?
	bne.s	VBlank_End		; if so, return
	btst	#3, (global_status_flags_3).w	; has the Z80 stopped?
	bne.s	VBlank_End		; if so, return

	bsr.w	ReadJoypads

	bsr.w	loc_729E
	bsr.w	loc_6EA0
	bsr.w	loc_71A6

	move.w	#$A0, d2
-
	nop
	dbf	d2, -

	btst	#6, (global_status_flags_2).w
	beq.s	VBlank_End
	bclr	#6, (global_status_flags_2).w
	bsr.w	UpdateCRAM
VBlank_End:
	movem.l	(sp)+, d0-a7


HBlank:
	rte

; ====================================
SetupValues:
	dc.l	$8000				;D5
	dc.l	$3FFF				;D6
	dc.l	$100				;D7
	dc.l	z80_ram				;A0
	dc.l	z80_bus_request		;A1
	dc.l	z80_reset			;A2
	dc.l	vdp_data_port		;A3
	dc.l	vdp_control_port	;A4

VDPInitValues:
	dc.b	$04		; Command $8004 - HInt off, Enable HV counter read
	dc.b	$14		; Command $8114 - Display off, VInt off, DMA on, PAL off
	dc.b	$30		; Command $8230 - Scroll A Address $C000
	dc.b	$3C		; Command $833C - Window Address $F000
	dc.b	$07		; Command $8407 - Scroll B Address $E000
	dc.b	$6C		; Command $856C - Sprite Table Address $D800
	dc.b	$00		; Command $8600 - Null
	dc.b	$00		; Command $8700 - Background color Pal 0 Color 0
	dc.b	$00		; Command $8800 - Null
	dc.b	$00		; Command $8900 - Null
	dc.b	$FF		; Command $8AFF - Hint timing $FF scanlines
	dc.b	$00		; Command $8B00 - Ext Int off, VScroll full, HScroll full
	dc.b	$81		; Command $8C81 - 40 cell mode, shadow/highlight off, no interlace
	dc.b	$37		; Command $8D37 - H Scroll Table Address $DC00
	dc.b	$00		; Command $8E00 - Null
	dc.b	$01		; Command $8F01 - VDP auto increment 1 byte
	dc.b	$01		; Command $9001 - 64x32 cell scroll size
	dc.b	$00		; Command $9100 - Window H left side, Base Point 0
	dc.b	$00		; Command $9200 - Window V upside, Base Point 0
	dc.b	$FF		; Command $93FF - DMA Length Counter $FFFF
	dc.b	$FF		; Command $94FF - DMA Length Counter $FFFF
	dc.b	$00		; Command $9500 - DMA Source Address $0
	dc.b	$00		; Command $9600 - DMA Source Address $0
	dc.b	$80		; Command $9780 - DMA Source Address $0 + VRAM fill mode
VDPInitValuesEnd:
