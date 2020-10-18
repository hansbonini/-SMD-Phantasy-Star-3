Z80StartupCode:
	save
	cpu Z80

	xor	a
	ld 	bc, 1FD7h
	ld 	de, 29h
	ld 	hl, 28h
	ld	sp, hl
	ld	(hl), a
	ldir
	pop ix
	pop iy
	ld	i, a
	ld	r, a
	ex	af, af'
	exx
	pop	af
	pop	bc
	pop	de
	pop	hl
	ex	af, af'
	exx
	pop	af
	pop	de
	pop	hl
	ld	sp, hl
	di
	im	1
	ld	(hl), 0E9h
	jp	(hl)

	restore
	padding off
Z80StartupCode_End:

PSGInitValues:
	dc.b	$9F, $BF, $DF, $FF	; values for PSG channel volumes
PSGInitValues_End: