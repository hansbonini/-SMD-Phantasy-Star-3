; ========================================================================
; Enemies that appear in the front row
;
; Bytes 1-4 = Art pointer
; Bytes 5-6 = ID for the enemy (starts from 1)
; Bytes 7-8 = Index of EnemyObjOffset table
; Bytes 9-10 = Enemy name pointer
; Bytes 11-12 = HP
; Bytes 13-14 = Technique used
;	48 = Foi
;	4C = Zan
;	50 = Gra
;	54 = Tsu
;	58 = Gires
;	5C = Poison
; Byte 15 = Technique level
; Byte 16 = Technique Cast %
; Bytes 17-18 = Attack
; Bytes 19-20 = Defense
; Byte 21 = Speed
; Byte 22 = Escape %
; Bytes 23-24 = EXP
; Bytes 25-26 = Meseta
; Byte 27 = ?
; Byte 28 = ?
; Bytes 29-30 = Bitfield; determines tech resistances
	; bit 0 = Foi resistance
    ; bit 1 = Zan resistance
    ; bit 2 = Gra resistance
    ; bit 3 = Tsu resistance
    ; bit 10 = Shiza resistance
    ; bit 11 = Deban resistance
    ; bit 13 = Forsa resistance
; ========================================================================

Enemy_Glop:
	dc.l	ArtComp_Glop
	dc.w	1		;   ID
	dc.w	$12		; index of EnemyObjOffset table
	dc.w	EnemyName_Glop-EnemyNameData
	dc.w	$34		; HP
	dc.w	$48
	dc.b	$01		; Tech Level
	dc.b	$4D		; Tech cast %
	dc.w	$F 		; Attack
	dc.w	$A		; Defense
	dc.b	$28		; Speed
	dc.b	$99		; Escape %
	dc.w	4 		; EXP
	dc.w	4		; Meseta
	dc.b	$00, $46, $00, $0A ;0x0 (0x0003A60A-0x0003A60E, Entry count: 0x00000004) [Unknown data]

Enemy_Ooze:
	dc.l	ArtComp_Glop
	dc.w	2
	dc.w	$12	;Predicted (Code target predicted at 0x10D36)
	dc.w	EnemyName_Ooze-EnemyNameData
	dc.b	$00, $2D ;0x0 (0x0003A616-0x0003A61A, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$4D
	dc.b	$00, $0F ;0x0 (0x0003A61E-0x0003A620, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$3C
	dc.b	$99
	dc.b	$00, $24 ;0x0 (0x0003A624-0x0003A626, Entry count: 0x00000002) [Unknown data]
	dc.w	$3C	;Predicted (Code target predicted at 0x10D60)
	dc.b	$00, $64, $0C, $0A ;0x0 (0x0003A628-0x0003A62C, Entry count: 0x00000004) [Unknown data]

Enemy_Slime:
	dc.l	ArtComp_Glop
	dc.w	3
	dc.w	$12	;Predicted (Code target predicted at 0x10D36)
	dc.w	EnemyName_Slime-EnemyNameData
	dc.b	$00, $59 ;0x0 (0x0003A634-0x0003A638, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$4D
	dc.b	$00, $14 ;0x0 (0x0003A63C-0x0003A63E, Entry count: 0x00000002) [Unknown data]
	dc.w	$51	;Predicted (Code target predicted at 0x10D75)
	dc.b	$4B
	dc.b	$99
	dc.b	$02, $6C ;0x0 (0x0003A642-0x0003A644, Entry count: 0x00000002) [Unknown data]
	dc.w	$64	;Predicted (Code target predicted at 0x10D88)
	dc.b	$00, $AA, $00, $0A ;0x0 (0x0003A646-0x0003A64A, Entry count: 0x00000004) [Unknown data]

Enemy_Fire:
	dc.l	ArtComp_Fire
	dc.b	$00, $04 ;0x0 (0x0003A64C-0x0003A650, Entry count: 0x00000004) [Unknown data]
	dc.w	$16	;Predicted (Code target predicted at 0x10D3A)
	dc.w	EnemyName_Fire-EnemyNameData
	dc.b	$00, $50 ;0x0 (0x0003A652-0x0003A656, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$99
	dc.b	$00, $0F ;0x0 (0x0003A65A-0x0003A65C, Entry count: 0x00000002) [Unknown data]
	dc.w	$22	;Predicted (Code target predicted at 0x10D46)
	dc.b	$3C
	dc.b	$CC
	dc.b	$00, $6E ;0x0 (0x0003A660-0x0003A662, Entry count: 0x00000002) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$00, $78, $00, $01 ;0x0 (0x0003A664-0x0003A668, Entry count: 0x00000004) [Unknown data]

Enemy_Murafire:
	dc.l	ArtComp_Fire
	dc.b	$00, $05 ;0x0 (0x0003A66A-0x0003A66E, Entry count: 0x00000004) [Unknown data]
	dc.w	$16	;Predicted (Code target predicted at 0x10D3A)
	dc.w	EnemyName_Murafire-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003A670-0x0003A674, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$99
	dc.b	$00, $14 ;0x0 (0x0003A678-0x0003A67A, Entry count: 0x00000002) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.b	$40
	dc.b	$CC
	dc.b	$00, $C8 ;0x0 (0x0003A67E-0x0003A680, Entry count: 0x00000002) [Unknown data]
	dc.w	$8D	;Predicted (Code target predicted at 0x10DB1)
	dc.b	$00, $96, $00, $01 ;0x0 (0x0003A682-0x0003A686, Entry count: 0x00000004) [Unknown data]

Enemy_Azufire:
	dc.l	ArtComp_Fire
	dc.b	$00, $06 ;0x0 (0x0003A688-0x0003A68C, Entry count: 0x00000004) [Unknown data]
	dc.w	$16	;Predicted (Code target predicted at 0x10D3A)
	dc.w	EnemyName_Azufire-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003A68E-0x0003A692, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$99
	dc.b	$00, $1E ;0x0 (0x0003A696-0x0003A698, Entry count: 0x00000002) [Unknown data]
	dc.w	$40	;Predicted (Code target predicted at 0x10D64)
	dc.b	$4D
	dc.b	$CC
	dc.b	$03, $16 ;0x0 (0x0003A69C-0x0003A69E, Entry count: 0x00000002) [Unknown data]
	dc.w	$26C	;Predicted (Code target predicted at 0x10F90)
	dc.b	$00, $C8, $00, $01 ;0x0 (0x0003A6A0-0x0003A6A4, Entry count: 0x00000004) [Unknown data]

Enemy_Nayl:
	dc.l	ArtComp_Nayl
	dc.b	$00, $07 ;0x0 (0x0003A6A6-0x0003A6AA, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Nayl-EnemyNameData
	dc.b	$00, $12 ;0x0 (0x0003A6AC-0x0003A6B0, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$01
	dc.b	$33
	dc.b	$00, $04 ;0x0 (0x0003A6B4-0x0003A6B6, Entry count: 0x00000002) [Unknown data]
	dc.w	$32	;Predicted (Code target predicted at 0x10D56)
	dc.b	$0F
	dc.b	$CC
	dc.b	$00, $02 ;0x0 (0x0003A6BA-0x0003A6BC, Entry count: 0x00000002) [Unknown data]
	dc.w	$07	;Predicted (Code target predicted at 0x10D2B)
	dc.b	$00, $14, $00, $00 ;0x0 (0x0003A6BE-0x0003A6C2, Entry count: 0x00000004) [Unknown data]

Enemy_Flayl:
	dc.l	ArtComp_Nayl
	dc.b	$00, $08 ;0x0 (0x0003A6C4-0x0003A6C8, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Flayl-EnemyNameData
	dc.b	$00, $23 ;0x0 (0x0003A6CA-0x0003A6CE, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$02
	dc.b	$33
	dc.b	$00, $06 ;0x0 (0x0003A6D2-0x0003A6D4, Entry count: 0x00000002) [Unknown data]
	dc.w	$3C	;Predicted (Code target predicted at 0x10D60)
	dc.b	$0A
	dc.b	$CC
	dc.b	$00, $03 ;0x0 (0x0003A6D8-0x0003A6DA, Entry count: 0x00000002) [Unknown data]
	dc.w	$11	;Predicted (Code target predicted at 0x10D35)
	dc.b	$00, $2D, $00, $00 ;0x0 (0x0003A6DC-0x0003A6E0, Entry count: 0x00000004) [Unknown data]

Enemy_Slayl:
	dc.l	ArtComp_Nayl
	dc.b	$00, $09 ;0x0 (0x0003A6E2-0x0003A6E6, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Slayl-EnemyNameData
	dc.b	$00, $50 ;0x0 (0x0003A6E8-0x0003A6EC, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$04
	dc.b	$33
	dc.b	$00, $15 ;0x0 (0x0003A6F0-0x0003A6F2, Entry count: 0x00000002) [Unknown data]
	dc.w	$96	;Predicted (Code target predicted at 0x10DBA)
	dc.b	$41
	dc.b	$CC
	dc.b	$01, $A4 ;0x0 (0x0003A6F6-0x0003A6F8, Entry count: 0x00000002) [Unknown data]
	dc.w	$C8	;Predicted (Code target predicted at 0x10DEC)
	dc.b	$00, $AA, $00, $00 ;0x0 (0x0003A6FA-0x0003A6FE, Entry count: 0x00000004) [Unknown data]

Enemy_Dryad:
	dc.l	ArtComp_Dryad
	dc.b	$00, $0A ;0x0 (0x0003A700-0x0003A704, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Dryad-EnemyNameData
	dc.b	$00, $3E ;0x0 (0x0003A706-0x0003A70A, Entry count: 0x00000004) [Unknown data]
	dc.w	$58
	dc.b	$06
	dc.b	$33
	dc.b	$00, $0E ;0x0 (0x0003A70E-0x0003A710, Entry count: 0x00000002) [Unknown data]
	dc.w	$05	;Predicted (Code target predicted at 0x10D29)
	dc.b	$28
	dc.b	$99
	dc.b	$00, $02 ;0x0 (0x0003A714-0x0003A716, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$00, $5A, $00, $00 ;0x0 (0x0003A718-0x0003A71C, Entry count: 0x00000004) [Unknown data]

Enemy_Nereid:
	dc.l	ArtComp_Dryad
	dc.b	$00, $0B ;0x0 (0x0003A71E-0x0003A722, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Nereid-EnemyNameData
	dc.b	$00, $5F ;0x0 (0x0003A724-0x0003A728, Entry count: 0x00000004) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$18 ;0x0 (0x0003A72A-0x0003A72B, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003A72C-0x0003A72E, Entry count: 0x00000002) [Unknown data]
	dc.w	$34	;Predicted (Code target predicted at 0x10D58)
	dc.b	$46
	dc.b	$99
	dc.b	$02, $44 ;0x0 (0x0003A732-0x0003A734, Entry count: 0x00000002) [Unknown data]
	dc.w	$DC	;Predicted (Code target predicted at 0x10E00)
	dc.b	$00, $C8, $00, $00 ;0x0 (0x0003A736-0x0003A73A, Entry count: 0x00000004) [Unknown data]

Enemy_Sylph:
	dc.l	ArtComp_Dryad
	dc.b	$00, $0C ;0x0 (0x0003A73C-0x0003A740, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Sylph-EnemyNameData
	dc.b	$00, $5F ;0x0 (0x0003A742-0x0003A746, Entry count: 0x00000004) [Unknown data]
	dc.w	$58
	dc.b	$63
	dc.b	$33
	dc.b	$00, $1F ;0x0 (0x0003A74A-0x0003A74C, Entry count: 0x00000002) [Unknown data]
	dc.w	$51	;Predicted (Code target predicted at 0x10D75)
	dc.b	$64
	dc.b	$99
	dc.b	$05, $D2 ;0x0 (0x0003A750-0x0003A752, Entry count: 0x00000002) [Unknown data]
	dc.w	$12C	;Predicted (Code target predicted at 0x10E50)
	dc.b	$00, $E1, $00, $00 ;0x0 (0x0003A754-0x0003A758, Entry count: 0x00000004) [Unknown data]

Enemy_Buzzgull:
	dc.l	ArtComp_Buzzgull
	dc.b	$00, $0D ;0x0 (0x0003A75A-0x0003A75E, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Buzzgull-EnemyNameData
	dc.b	$00, $2E ;0x0 (0x0003A760-0x0003A764, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $08 ;0x0 (0x0003A768-0x0003A76A, Entry count: 0x00000002) [Unknown data]
	dc.w	$01	;Predicted (Code target predicted at 0x10D25)
	dc.b	$14
	dc.b	$B3
	dc.b	$00, $02 ;0x0 (0x0003A76E-0x0003A770, Entry count: 0x00000002) [Unknown data]
	dc.w	$08	;Predicted (Code target predicted at 0x10D2C)
	dc.b	$00, $29, $00, $00 ;0x0 (0x0003A772-0x0003A776, Entry count: 0x00000004) [Unknown data]

Enemy_Lashgull:
	dc.l	ArtComp_Buzzgull
	dc.b	$00, $0E ;0x0 (0x0003A778-0x0003A77C, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Lashgull-EnemyNameData
	dc.b	$00, $3C ;0x0 (0x0003A77E-0x0003A782, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$04
	dc.b	$1A
	dc.b	$00, $09 ;0x0 (0x0003A786-0x0003A788, Entry count: 0x00000002) [Unknown data]
	dc.w	$02	;Predicted (Code target predicted at 0x10D26)
	dc.b	$16
	dc.b	$B3
	dc.b	$00, $04 ;0x0 (0x0003A78C-0x0003A78E, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$00, $35, $00, $00 ;0x0 (0x0003A790-0x0003A794, Entry count: 0x00000004) [Unknown data]

Enemy_Hackgull:
	dc.l	ArtComp_Buzzgull
	dc.b	$00, $0F ;0x0 (0x0003A796-0x0003A79A, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Hackgull-EnemyNameData
	dc.b	$00, $92 ;0x0 (0x0003A79C-0x0003A7A0, Entry count: 0x00000004) [Unknown data]
	dc.w	$54	;Predicted (Code target predicted at 0x10D78)
	dc.b	$01 ;0x0 (0x0003A7A2-0x0003A7A3, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $0D ;0x0 (0x0003A7A4-0x0003A7A6, Entry count: 0x00000002) [Unknown data]
	dc.w	$03	;Predicted (Code target predicted at 0x10D27)
	dc.b	$3C
	dc.b	$B3
	dc.b	$00, $28 ;0x0 (0x0003A7AA-0x0003A7AC, Entry count: 0x00000002) [Unknown data]
	dc.w	$1D	;Predicted (Code target predicted at 0x10D41)
	dc.b	$00, $53, $00, $00 ;0x0 (0x0003A7AE-0x0003A7B2, Entry count: 0x00000004) [Unknown data]

Enemy_Eindon:
	dc.l	ArtComp_Eindon
	dc.b	$00, $10 ;0x0 (0x0003A7B4-0x0003A7B8, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Eindon-EnemyNameData
	dc.b	$00, $0C ;0x0 (0x0003A7BA-0x0003A7BE, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $03 ;0x0 (0x0003A7C2-0x0003A7C4, Entry count: 0x00000002) [Unknown data]
	dc.w	$02	;Predicted (Code target predicted at 0x10D26)
	dc.b	$08
	dc.b	$99
	dc.b	$00, $02 ;0x0 (0x0003A7C8-0x0003A7CA, Entry count: 0x00000002) [Unknown data]
	dc.w	$04	;Predicted (Code target predicted at 0x10D28)
	dc.b	$00, $0A, $00, $00 ;0x0 (0x0003A7CC-0x0003A7D0, Entry count: 0x00000004) [Unknown data]

Enemy_Tsveidon:
	dc.l	ArtComp_Eindon
	dc.b	$00, $11 ;0x0 (0x0003A7D2-0x0003A7D6, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Tsveidon-EnemyNameData
	dc.b	$00, $0F ;0x0 (0x0003A7D8-0x0003A7DC, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$33
	dc.b	$00, $04 ;0x0 (0x0003A7E0-0x0003A7E2, Entry count: 0x00000002) [Unknown data]
	dc.w	$02	;Predicted (Code target predicted at 0x10D26)
	dc.b	$09
	dc.b	$99
	dc.b	$00, $02 ;0x0 (0x0003A7E6-0x0003A7E8, Entry count: 0x00000002) [Unknown data]
	dc.w	$08	;Predicted (Code target predicted at 0x10D2C)
	dc.b	$00, $0C, $00, $00 ;0x0 (0x0003A7EA-0x0003A7EE, Entry count: 0x00000004) [Unknown data]

Enemy_Dreidon:
	dc.l	ArtComp_Eindon
	dc.b	$00, $12 ;0x0 (0x0003A7F0-0x0003A7F4, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Dreidon-EnemyNameData
	dc.b	$00, $49 ;0x0 (0x0003A7F6-0x0003A7FA, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$33
	dc.b	$00, $0F ;0x0 (0x0003A7FE-0x0003A800, Entry count: 0x00000002) [Unknown data]
	dc.w	$02	;Predicted (Code target predicted at 0x10D26)
	dc.b	$3C
	dc.b	$99
	dc.b	$00, $31 ;0x0 (0x0003A804-0x0003A806, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$00, $58, $00, $00 ;0x0 (0x0003A808-0x0003A80C, Entry count: 0x00000004) [Unknown data]

Enemy_Clump:
	dc.l	ArtComp_Clump
	dc.b	$00, $13 ;0x0 (0x0003A80E-0x0003A812, Entry count: 0x00000004) [Unknown data]
	dc.w	$12	;Predicted (Code target predicted at 0x10D36)
	dc.w	EnemyName_Clump-EnemyNameData
	dc.b	$00, $26 ;0x0 (0x0003A814-0x0003A818, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$33
	dc.b	$00, $0E ;0x0 (0x0003A81C-0x0003A81E, Entry count: 0x00000002) [Unknown data]
	dc.w	$08	;Predicted (Code target predicted at 0x10D2C)
	dc.b	$12
	dc.b	$E6
	dc.b	$00, $03 ;0x0 (0x0003A822-0x0003A824, Entry count: 0x00000002) [Unknown data]
	dc.w	$1B	;Predicted (Code target predicted at 0x10D3F)
	dc.b	$00, $53, $00, $00 ;0x0 (0x0003A826-0x0003A82A, Entry count: 0x00000004) [Unknown data]

Enemy_Cluster:
	dc.l	ArtComp_Clump
	dc.b	$00, $14 ;0x0 (0x0003A82C-0x0003A830, Entry count: 0x00000004) [Unknown data]
	dc.w	$12	;Predicted (Code target predicted at 0x10D36)
	dc.w	EnemyName_Cluster-EnemyNameData
	dc.b	$00, $43 ;0x0 (0x0003A832-0x0003A836, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$33
	dc.b	$00, $12 ;0x0 (0x0003A83A-0x0003A83C, Entry count: 0x00000002) [Unknown data]
	dc.w	$0D	;Predicted (Code target predicted at 0x10D31)
	dc.b	$1F
	dc.b	$E6
	dc.b	$00, $09 ;0x0 (0x0003A840-0x0003A842, Entry count: 0x00000002) [Unknown data]
	dc.w	$21	;Predicted (Code target predicted at 0x10D45)
	dc.b	$00, $64, $00, $00 ;0x0 (0x0003A844-0x0003A848, Entry count: 0x00000004) [Unknown data]

Enemy_Clique:
	dc.l	ArtComp_Clump
	dc.b	$00, $15 ;0x0 (0x0003A84A-0x0003A84E, Entry count: 0x00000004) [Unknown data]
	dc.w	$12	;Predicted (Code target predicted at 0x10D36)
	dc.w	EnemyName_Clique-EnemyNameData
	dc.b	$00, $85 ;0x0 (0x0003A850-0x0003A854, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003A858-0x0003A85A, Entry count: 0x00000002) [Unknown data]
	dc.w	$1F	;Predicted (Code target predicted at 0x10D43)
	dc.b	$54
	dc.b	$E6
	dc.b	$00, $58 ;0x0 (0x0003A85E-0x0003A860, Entry count: 0x00000002) [Unknown data]
	dc.w	$79	;Predicted (Code target predicted at 0x10D9D)
	dc.b	$00, $D4, $00, $00 ;0x0 (0x0003A862-0x0003A866, Entry count: 0x00000004) [Unknown data]

Enemy_Chirper:
	dc.l	ArtComp_Chirper
	dc.b	$00, $16 ;0x0 (0x0003A868-0x0003A86C, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Chirper-EnemyNameData
	dc.b	$00, $0A ;0x0 (0x0003A86E-0x0003A872, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $03 ;0x0 (0x0003A876-0x0003A878, Entry count: 0x00000002) [Unknown data]
	dc.w	$02	;Predicted (Code target predicted at 0x10D26)
	dc.b	$0C
	dc.b	$B3
	dc.b	$00, $01 ;0x0 (0x0003A87C-0x0003A87E, Entry count: 0x00000002) [Unknown data]
	dc.w	$01	;Predicted (Code target predicted at 0x10D25)
	dc.b	$00, $0A, $00, $00 ;0x0 (0x0003A880-0x0003A884, Entry count: 0x00000004) [Unknown data]

Enemy_Warbler:
	dc.l	ArtComp_Chirper
	dc.b	$00, $17 ;0x0 (0x0003A886-0x0003A88A, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Warbler-EnemyNameData
	dc.b	$00, $49 ;0x0 (0x0003A88C-0x0003A890, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $0F ;0x0 (0x0003A894-0x0003A896, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$28
	dc.b	$80
	dc.b	$00, $20 ;0x0 (0x0003A89A-0x0003A89C, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$00, $64, $00, $00 ;0x0 (0x0003A89E-0x0003A8A2, Entry count: 0x00000004) [Unknown data]

Enemy_Squawker:
	dc.l	ArtComp_Chirper
	dc.b	$00, $18 ;0x0 (0x0003A8A4-0x0003A8A8, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Squawker-EnemyNameData
	dc.b	$00, $8A ;0x0 (0x0003A8AA-0x0003A8AE, Entry count: 0x00000004) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$03 ;0x0 (0x0003A8B0-0x0003A8B1, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $19 ;0x0 (0x0003A8B2-0x0003A8B4, Entry count: 0x00000002) [Unknown data]
	dc.w	$34	;Predicted (Code target predicted at 0x10D58)
	dc.b	$46
	dc.b	$80
	dc.b	$02, $58 ;0x0 (0x0003A8B8-0x0003A8BA, Entry count: 0x00000002) [Unknown data]
	dc.w	$96	;Predicted (Code target predicted at 0x10DBA)
	dc.b	$00, $AA, $00, $00 ;0x0 (0x0003A8BC-0x0003A8C0, Entry count: 0x00000004) [Unknown data]

Enemy_Lizrd:
	dc.l	ArtComp_Lizrd
	dc.b	$00, $19 ;0x0 (0x0003A8C2-0x0003A8C6, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Lizrd-EnemyNameData
	dc.b	$00, $49 ;0x0 (0x0003A8C8-0x0003A8CC, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $0F ;0x0 (0x0003A8D0-0x0003A8D2, Entry count: 0x00000002) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.b	$30
	dc.b	$B3
	dc.b	$00, $31 ;0x0 (0x0003A8D6-0x0003A8D8, Entry count: 0x00000002) [Unknown data]
	dc.w	$27	;Predicted (Code target predicted at 0x10D4B)
	dc.b	$00, $64, $00, $00 ;0x0 (0x0003A8DA-0x0003A8DE, Entry count: 0x00000004) [Unknown data]

Enemy_Blizrd:
	dc.l	ArtComp_Lizrd
	dc.b	$00, $1A ;0x0 (0x0003A8E0-0x0003A8E4, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Blizrd-EnemyNameData
	dc.b	$00, $5D ;0x0 (0x0003A8E6-0x0003A8EA, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $14 ;0x0 (0x0003A8EE-0x0003A8F0, Entry count: 0x00000002) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.b	$37
	dc.b	$B3
	dc.b	$00, $5D ;0x0 (0x0003A8F4-0x0003A8F6, Entry count: 0x00000002) [Unknown data]
	dc.w	$39	;Predicted (Code target predicted at 0x10D5D)
	dc.b	$00, $82, $00, $00 ;0x0 (0x0003A8F8-0x0003A8FC, Entry count: 0x00000004) [Unknown data]

Enemy_Grizrd:
	dc.l	ArtComp_Lizrd
	dc.b	$00, $1B ;0x0 (0x0003A8FE-0x0003A902, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Grizrd-EnemyNameData
	dc.b	$00, $67 ;0x0 (0x0003A904-0x0003A908, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $28 ;0x0 (0x0003A90C-0x0003A90E, Entry count: 0x00000002) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$46
	dc.b	$B3
	dc.b	$01, $A5 ;0x0 (0x0003A912-0x0003A914, Entry count: 0x00000002) [Unknown data]
	dc.w	$12C	;Predicted (Code target predicted at 0x10E50)
	dc.b	$00, $B4, $00, $00 ;0x0 (0x0003A916-0x0003A91A, Entry count: 0x00000004) [Unknown data]

Enemy_Spinner:
	dc.l	ArtComp_Spinner
	dc.b	$00, $1C ;0x0 (0x0003A91C-0x0003A920, Entry count: 0x00000004) [Unknown data]
	dc.w	$1C	;Predicted (Code target predicted at 0x10D40)
	dc.w	EnemyName_Spinner-EnemyNameData
	dc.b	$00, $67 ;0x0 (0x0003A922-0x0003A926, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$02
	dc.b	$80
	dc.b	$00, $14 ;0x0 (0x0003A92A-0x0003A92C, Entry count: 0x00000002) [Unknown data]
	dc.w	$41	;Predicted (Code target predicted at 0x10D65)
	dc.b	$50
	dc.b	$CC
	dc.b	$02, $47 ;0x0 (0x0003A930-0x0003A932, Entry count: 0x00000002) [Unknown data]
	dc.w	$17C	;Predicted (Code target predicted at 0x10EA0)
	dc.b	$00, $C3, $00, $00 ;0x0 (0x0003A934-0x0003A938, Entry count: 0x00000004) [Unknown data]

Enemy_Twirler:
	dc.l	ArtComp_Spinner
	dc.b	$00, $1D ;0x0 (0x0003A93A-0x0003A93E, Entry count: 0x00000004) [Unknown data]
	dc.w	$1C	;Predicted (Code target predicted at 0x10D40)
	dc.w	EnemyName_Twirler-EnemyNameData
	dc.b	$00, $7B ;0x0 (0x0003A940-0x0003A944, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$03
	dc.b	$80
	dc.b	$00, $1C ;0x0 (0x0003A948-0x0003A94A, Entry count: 0x00000002) [Unknown data]
	dc.w	$5A	;Predicted (Code target predicted at 0x10D7E)
	dc.b	$5F
	dc.b	$CC
	dc.b	$05, $82 ;0x0 (0x0003A94E-0x0003A950, Entry count: 0x00000002) [Unknown data]
	dc.w	$118	;Predicted (Code target predicted at 0x10E3C)
	dc.b	$00, $E6, $00, $00 ;0x0 (0x0003A952-0x0003A956, Entry count: 0x00000004) [Unknown data]

Enemy_Wizzer:
	dc.l	ArtComp_Spinner
	dc.b	$00, $1E ;0x0 (0x0003A958-0x0003A95C, Entry count: 0x00000004) [Unknown data]
	dc.w	$1C	;Predicted (Code target predicted at 0x10D40)
	dc.w	EnemyName_Wizzer-EnemyNameData
	dc.b	$00, $85 ;0x0 (0x0003A95E-0x0003A962, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$04
	dc.b	$80
	dc.b	$00, $1E ;0x0 (0x0003A966-0x0003A968, Entry count: 0x00000002) [Unknown data]
	dc.w	$5C	;Predicted (Code target predicted at 0x10D80)
	dc.b	$6E
	dc.b	$CC
	dc.b	$10, $11 ;0x0 (0x0003A96C-0x0003A96E, Entry count: 0x00000002) [Unknown data]
	dc.w	$1A4	;Predicted (Code target predicted at 0x10EC8)
	dc.b	$01, $00, $00, $00 ;0x0 (0x0003A970-0x0003A974, Entry count: 0x00000004) [Unknown data]

Enemy_Imp:
	dc.l	ArtComp_Imp
	dc.b	$00, $1F ;0x0 (0x0003A976-0x0003A97A, Entry count: 0x00000004) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.w	EnemyName_Imp-EnemyNameData
	dc.b	$00, $62 ;0x0 (0x0003A97C-0x0003A980, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$02, $4D, $00, $15 ;0x0 (0x0003A982-0x0003A986, Entry count: 0x00000004) [Unknown data]
	dc.w	$3C	;Predicted (Code target predicted at 0x10D60)
	dc.b	$B4, $33, $05, $3C ;0x0 (0x0003A988-0x0003A98C, Entry count: 0x00000004) [Unknown data]
	dc.w	$DC	;Predicted (Code target predicted at 0x10E00)
	dc.b	$00, $D4, $00, $00 ;0x0 (0x0003A98E-0x0003A992, Entry count: 0x00000004) [Unknown data]

Enemy_Impfoul:
	dc.l	ArtComp_Imp
	dc.b	$00, $20 ;0x0 (0x0003A994-0x0003A998, Entry count: 0x00000004) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.w	EnemyName_Impfoul-EnemyNameData
	dc.b	$00, $76 ;0x0 (0x0003A99A-0x0003A99E, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$03
	dc.b	$4D
	dc.b	$00, $1C ;0x0 (0x0003A9A2-0x0003A9A4, Entry count: 0x00000002) [Unknown data]
	dc.w	$49	;Predicted (Code target predicted at 0x10D6D)
	dc.b	$BC
	dc.b	$33
	dc.b	$0C, $30 ;0x0 (0x0003A9A8-0x0003A9AA, Entry count: 0x00000002) [Unknown data]
	dc.w	$154	;Predicted (Code target predicted at 0x10E78)
	dc.b	$00, $E6, $00, $00 ;0x0 (0x0003A9AC-0x0003A9B0, Entry count: 0x00000004) [Unknown data]

Enemy_Impvile:
	dc.l	ArtComp_Imp
	dc.b	$00, $21 ;0x0 (0x0003A9B2-0x0003A9B6, Entry count: 0x00000004) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.w	EnemyName_Impvile-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003A9B8-0x0003A9BC, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$04
	dc.b	$4D
	dc.b	$00, $1E ;0x0 (0x0003A9C0-0x0003A9C2, Entry count: 0x00000002) [Unknown data]
	dc.w	$53	;Predicted (Code target predicted at 0x10D77)
	dc.b	$B4
	dc.b	$33
	dc.b	$17, $0C ;0x0 (0x0003A9C6-0x0003A9C8, Entry count: 0x00000002) [Unknown data]
	dc.w	$1F4	;Predicted (Code target predicted at 0x10F18)
	dc.b	$00, $FC, $00, $00 ;0x0 (0x0003A9CA-0x0003A9CE, Entry count: 0x00000004) [Unknown data]

Enemy_Nova:
	dc.l	ArtComp_Nova
	dc.b	$00, $22 ;0x0 (0x0003A9D0-0x0003A9D4, Entry count: 0x00000004) [Unknown data]
	dc.w	$18	;Predicted (Code target predicted at 0x10D3C)
	dc.w	EnemyName_Nova-EnemyNameData
	dc.b	$00, $49 ;0x0 (0x0003A9D6-0x0003A9DA, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$01
	dc.b	$33
	dc.b	$00, $12 ;0x0 (0x0003A9DE-0x0003A9E0, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$10
	dc.b	$CC
	dc.b	$00, $14 ;0x0 (0x0003A9E4-0x0003A9E6, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$00, $4A, $00, $0A ;0x0 (0x0003A9E8-0x0003A9EC, Entry count: 0x00000004) [Unknown data]

Enemy_Pulsar:
	dc.l	ArtComp_Nova
	dc.b	$00, $23 ;0x0 (0x0003A9EE-0x0003A9F2, Entry count: 0x00000004) [Unknown data]
	dc.w	$18	;Predicted (Code target predicted at 0x10D3C)
	dc.w	EnemyName_Pulsar-EnemyNameData
	dc.b	$00, $72 ;0x0 (0x0003A9F4-0x0003A9F8, Entry count: 0x00000004) [Unknown data]
	dc.w	$54	;Predicted (Code target predicted at 0x10D78)
	dc.b	$02 ;0x0 (0x0003A9FA-0x0003A9FB, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003A9FC-0x0003A9FE, Entry count: 0x00000002) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.b	$2C
	dc.b	$CC
	dc.b	$00, $50 ;0x0 (0x0003AA02-0x0003AA04, Entry count: 0x00000002) [Unknown data]
	dc.w	$3C	;Predicted (Code target predicted at 0x10D60)
	dc.b	$00, $6B, $00, $0A ;0x0 (0x0003AA06-0x0003AA0A, Entry count: 0x00000004) [Unknown data]

Enemy_Quasar:
	dc.l	ArtComp_Nova
	dc.b	$00, $24 ;0x0 (0x0003AA0C-0x0003AA10, Entry count: 0x00000004) [Unknown data]
	dc.w	$18	;Predicted (Code target predicted at 0x10D3C)
	dc.w	EnemyName_Quasar-EnemyNameData
	dc.b	$00, $79 ;0x0 (0x0003AA12-0x0003AA16, Entry count: 0x00000004) [Unknown data]
	dc.w	$54	;Predicted (Code target predicted at 0x10D78)
	dc.b	$03 ;0x0 (0x0003AA18-0x0003AA19, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $28 ;0x0 (0x0003AA1A-0x0003AA1C, Entry count: 0x00000002) [Unknown data]
	dc.w	$5A	;Predicted (Code target predicted at 0x10D7E)
	dc.b	$46
	dc.b	$CC
	dc.b	$01, $88 ;0x0 (0x0003AA20-0x0003AA22, Entry count: 0x00000002) [Unknown data]
	dc.w	$44	;Predicted (Code target predicted at 0x10D68)
	dc.b	$00, $81, $00, $0B ;0x0 (0x0003AA24-0x0003AA28, Entry count: 0x00000004) [Unknown data]

Enemy_Chirpbot:
	dc.l	ArtComp_Chirpbot
	dc.b	$00, $25 ;0x0 (0x0003AA2A-0x0003AA2E, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Chirpbot-EnemyNameData
	dc.b	$00, $50 ;0x0 (0x0003AA30-0x0003AA34, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$33
	dc.b	$00, $0F ;0x0 (0x0003AA38-0x0003AA3A, Entry count: 0x00000002) [Unknown data]
	dc.w	$10	;Predicted (Code target predicted at 0x10D34)
	dc.b	$3C
	dc.b	$B3
	dc.b	$00, $36 ;0x0 (0x0003AA3E-0x0003AA40, Entry count: 0x00000002) [Unknown data]
	dc.w	$2A	;Predicted (Code target predicted at 0x10D4E)
	dc.b	$00, $58, $00, $05 ;0x0 (0x0003AA42-0x0003AA46, Entry count: 0x00000004) [Unknown data]

Enemy_Warblbot:
	dc.l	ArtComp_Chirpbot
	dc.b	$00, $26 ;0x0 (0x0003AA48-0x0003AA4C, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Warblbot-EnemyNameData
	dc.b	$00, $5D ;0x0 (0x0003AA4E-0x0003AA52, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$33
	dc.b	$00, $15 ;0x0 (0x0003AA56-0x0003AA58, Entry count: 0x00000002) [Unknown data]
	dc.w	$17	;Predicted (Code target predicted at 0x10D3B)
	dc.b	$41
	dc.b	$B3
	dc.b	$00, $50 ;0x0 (0x0003AA5C-0x0003AA5E, Entry count: 0x00000002) [Unknown data]
	dc.w	$85	;Predicted (Code target predicted at 0x10DA9)
	dc.b	$00, $71, $00, $05 ;0x0 (0x0003AA60-0x0003AA64, Entry count: 0x00000004) [Unknown data]

Enemy_Squakbot:
	dc.l	ArtComp_Chirpbot
	dc.b	$00, $27 ;0x0 (0x0003AA66-0x0003AA6A, Entry count: 0x00000004) [Unknown data]
	dc.w	$0C	;Predicted (Code target predicted at 0x10D30)
	dc.w	EnemyName_Squakbot-EnemyNameData
	dc.b	$00, $67 ;0x0 (0x0003AA6C-0x0003AA70, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$80
	dc.b	$00, $28 ;0x0 (0x0003AA74-0x0003AA76, Entry count: 0x00000002) [Unknown data]
	dc.w	$51	;Predicted (Code target predicted at 0x10D75)
	dc.b	$58
	dc.b	$B3
	dc.b	$00, $0C ;0x0 (0x0003AA7A-0x0003AA7C, Entry count: 0x00000002) [Unknown data]
	dc.w	$0E	;Predicted (Code target predicted at 0x10D32)
	dc.b	$01, $9B, $00, $05 ;0x0 (0x0003AA7E-0x0003AA82, Entry count: 0x00000004) [Unknown data]

Enemy_Commsat:
	dc.l	ArtComp_Commsat
	dc.b	$00, $28 ;0x0 (0x0003AA84-0x0003AA88, Entry count: 0x00000004) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.w	EnemyName_Commsat-EnemyNameData
	dc.b	$00, $9A ;0x0 (0x0003AA8A-0x0003AA8E, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C	;Predicted (Code target predicted at 0x10D80)
	dc.b	$01 ;0x0 (0x0003AA90-0x0003AA91, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $19 ;0x0 (0x0003AA92-0x0003AA94, Entry count: 0x00000002) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.b	$3A
	dc.b	$B3
	dc.b	$00, $F0 ;0x0 (0x0003AA98-0x0003AA9A, Entry count: 0x00000002) [Unknown data]
	dc.w	$85	;Predicted (Code target predicted at 0x10DA9)
	dc.b	$00, $7E, $00, $00 ;0x0 (0x0003AA9C-0x0003AAA0, Entry count: 0x00000004) [Unknown data]

Enemy_Spysat:
	dc.l	ArtComp_Commsat
	dc.b	$00, $29 ;0x0 (0x0003AAA2-0x0003AAA6, Entry count: 0x00000004) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.w	EnemyName_Spysat-EnemyNameData
	dc.b	$00, $B6 ;0x0 (0x0003AAA8-0x0003AAAC, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $1E ;0x0 (0x0003AAB0-0x0003AAB2, Entry count: 0x00000002) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.b	$46
	dc.b	$B3
	dc.b	$02, $B2 ;0x0 (0x0003AAB6-0x0003AAB8, Entry count: 0x00000002) [Unknown data]
	dc.w	$A1	;Predicted (Code target predicted at 0x10DC5)
	dc.b	$00, $A0, $00, $00 ;0x0 (0x0003AABA-0x0003AABE, Entry count: 0x00000004) [Unknown data]

Enemy_Killsat:
	dc.l	ArtComp_Commsat
	dc.b	$00, $2A ;0x0 (0x0003AAC0-0x0003AAC4, Entry count: 0x00000004) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.w	EnemyName_Killsat-EnemyNameData
	dc.b	$00, $79 ;0x0 (0x0003AAC6-0x0003AACA, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $2D ;0x0 (0x0003AACE-0x0003AAD0, Entry count: 0x00000002) [Unknown data]
	dc.w	$49	;Predicted (Code target predicted at 0x10D6D)
	dc.b	$50
	dc.b	$B3
	dc.b	$03, $41 ;0x0 (0x0003AAD4-0x0003AAD6, Entry count: 0x00000002) [Unknown data]
	dc.w	$F0	;Predicted (Code target predicted at 0x10E14)
	dc.b	$00, $C7, $00, $00 ;0x0 (0x0003AAD8-0x0003AADC, Entry count: 0x00000004) [Unknown data]

Enemy_Arachne:
	dc.l	ArtComp_Arachne
	dc.b	$00, $2B ;0x0 (0x0003AADE-0x0003AAE2, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Arachne-EnemyNameData
	dc.b	$00, $49 ;0x0 (0x0003AAE4-0x0003AAE8, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$02
	dc.b	$33
	dc.b	$00, $10 ;0x0 (0x0003AAEC-0x0003AAEE, Entry count: 0x00000002) [Unknown data]
	dc.w	$11	;Predicted (Code target predicted at 0x10D35)
	dc.b	$3C
	dc.b	$99
	dc.b	$00, $31 ;0x0 (0x0003AAF2-0x0003AAF4, Entry count: 0x00000002) [Unknown data]
	dc.w	$28	;Predicted (Code target predicted at 0x10D4C)
	dc.b	$00, $58, $00, $04 ;0x0 (0x0003AAF6-0x0003AAFA, Entry count: 0x00000004) [Unknown data

Enemy_Darachne:
	dc.l	ArtComp_Arachne
	dc.b	$00, $2C ;0x0 (0x0003AAFC-0x0003AB00, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Darachne-EnemyNameData
	dc.b	$00, $71 ;0x0 (0x0003AB02-0x0003AB06, Entry count: 0x00000004) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$03, $33, $00, $16 ;0x0 (0x0003AB08-0x0003AB0C, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.b	$41, $99, $01, $36 ;0x0 (0x0003AB0E-0x0003AB12, Entry count: 0x00000004) [Unknown data]
	dc.w	$57	;Predicted (Code target predicted at 0x10D7B)
	dc.b	$00, $92, $00, $04 ;0x0 (0x0003AB14-0x0003AB18, Entry count: 0x00000004) [Unknown data]

Enemy_Zarachne:
	dc.l	ArtComp_Arachne
	dc.b	$00, $2D ;0x0 (0x0003AB1A-0x0003AB1E, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Zarachne-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003AB20-0x0003AB24, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$04
	dc.b	$33
	dc.b	$00, $1C ;0x0 (0x0003AB28-0x0003AB2A, Entry count: 0x00000002) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$5A
	dc.b	$99
	dc.b	$03, $35 ;0x0 (0x0003AB2E-0x0003AB30, Entry count: 0x00000002) [Unknown data]
	dc.w	$E9	;Predicted (Code target predicted at 0x10E0D)
	dc.b	$00, $BC, $00, $04 ;0x0 (0x0003AB32-0x0003AB36, Entry count: 0x00000004) [Unknown data]

Enemy_Blink:
	dc.l	ArtComp_Blink
	dc.b	$00, $2E ;0x0 (0x0003AB38-0x0003AB3C, Entry count: 0x00000004) [Unknown data]
	dc.w	$20	;Predicted (Code target predicted at 0x10D44)
	dc.w	EnemyName_Blink-EnemyNameData
	dc.b	$00, $39 ;0x0 (0x0003AB3E-0x0003AB42, Entry count: 0x00000004) [Unknown data]
	dc.w	$58
	dc.b	$0B
	dc.b	$33
	dc.b	$00, $0B ;0x0 (0x0003AB46-0x0003AB48, Entry count: 0x00000002) [Unknown data]
	dc.w	$11	;Predicted (Code target predicted at 0x10D35)
	dc.b	$14
	dc.b	$1A
	dc.b	$00, $2F ;0x0 (0x0003AB4C-0x0003AB4E, Entry count: 0x00000002) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.b	$00, $53, $00, $00 ;0x0 (0x0003AB50-0x0003AB54, Entry count: 0x00000004) [Unknown data]

Enemy_Flash:
	dc.l	ArtComp_Blink
	dc.b	$00, $2F ;0x0 (0x0003AB56-0x0003AB5A, Entry count: 0x00000004) [Unknown data]
	dc.w	$20	;Predicted (Code target predicted at 0x10D44)
	dc.w	EnemyName_Flash-EnemyNameData
	dc.b	$00, $71 ;0x0 (0x0003AB5C-0x0003AB60, Entry count: 0x00000004) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$14 ;0x0 (0x0003AB62-0x0003AB63, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $11 ;0x0 (0x0003AB64-0x0003AB66, Entry count: 0x00000002) [Unknown data]
	dc.w	$1B	;Predicted (Code target predicted at 0x10D3F)
	dc.b	$3D
	dc.b	$1A
	dc.b	$00, $A2 ;0x0 (0x0003AB6A-0x0003AB6C, Entry count: 0x00000002) [Unknown data]
	dc.w	$78	;Predicted (Code target predicted at 0x10D9C)
	dc.b	$00, $90, $00, $00 ;0x0 (0x0003AB6E-0x0003AB72, Entry count: 0x00000004) [Unknown data]

Enemy_Strobe:
	dc.l	ArtComp_Blink
	dc.b	$00, $30 ;0x0 (0x0003AB74-0x0003AB78, Entry count: 0x00000004) [Unknown data]
	dc.w	$20	;Predicted (Code target predicted at 0x10D44)
	dc.w	EnemyName_Strobe-EnemyNameData
	dc.b	$00, $63 ;0x0 (0x0003AB7A-0x0003AB7E, Entry count: 0x00000004) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$1E, $33, $00, $14 ;0x0 (0x0003AB80-0x0003AB84, Entry count: 0x00000004) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$50
	dc.b	$1A
	dc.b	$00, $D9 ;0x0 (0x0003AB88-0x0003AB8A, Entry count: 0x00000002) [Unknown data]
	dc.w	$125	;Predicted (Code target predicted at 0x10E49)
	dc.b	$00, $CA, $00, $00 ;0x0 (0x0003AB8C-0x0003AB90, Entry count: 0x00000004) [Unknown data]

Enemy_Minimech:
	dc.l	ArtComp_Minimech
	dc.b	$00, $31 ;0x0 (0x0003AB92-0x0003AB96, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Minimech-EnemyNameData
	dc.b	$00, $9C ;0x0 (0x0003AB98-0x0003AB9C, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $0C ;0x0 (0x0003ABA0-0x0003ABA2, Entry count: 0x00000002) [Unknown data]
	dc.w	$A	;Predicted (Code target predicted at 0x10D2E)
	dc.b	$3C
	dc.b	$CC
	dc.b	$00, $C6 ;0x0 (0x0003ABA6-0x0003ABA8, Entry count: 0x00000002) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.b	$00, $85, $00, $02 ;0x0 (0x0003ABAA-0x0003ABAE, Entry count: 0x00000004) [Unknown data]

Enemy_Mech:
	dc.l	ArtComp_Minimech
	dc.b	$00, $32 ;0x0 (0x0003ABB0-0x0003ABB4, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Mech-EnemyNameData
	dc.b	$01, $72 ;0x0 (0x0003ABB6-0x0003ABBA, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $0E ;0x0 (0x0003ABBE-0x0003ABC0, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$46
	dc.b	$CC
	dc.b	$02, $C9 ;0x0 (0x0003ABC4-0x0003ABC6, Entry count: 0x00000002) [Unknown data]
	dc.w	$A5	;Predicted (Code target predicted at 0x10DC9)
	dc.b	$00, $90, $00, $02 ;0x0 (0x0003ABC8-0x0003ABCC, Entry count: 0x00000004) [Unknown data]

Enemy_Maxmech:
	dc.l	ArtComp_Minimech
	dc.b	$00, $33 ;0x0 (0x0003ABCE-0x0003ABD2, Entry count: 0x00000004) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.w	EnemyName_Maxmech-EnemyNameData
	dc.b	$00, $DC ;0x0 (0x0003ABD4-0x0003ABD8, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$01, $4D, $00, $15 ;0x0 (0x0003ABDA-0x0003ABDE, Entry count: 0x00000004) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.b	$5A, $CC, $06, $B2 ;0x0 (0x0003ABE0-0x0003ABE4, Entry count: 0x00000004) [Unknown data]
	dc.w	$164	;Predicted (Code target predicted at 0x10E88)
	dc.b	$00, $BF, $00, $02 ;0x0 (0x0003ABE6-0x0003ABEA, Entry count: 0x00000004) [Unknown data]

Enemy_Lazrbot:
	dc.l	ArtComp_Lazrbot
	dc.b	$00, $34 ;0x0 (0x0003ABEC-0x0003ABF0, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Lazrbot-EnemyNameData
	dc.b	$00, $64 ;0x0 (0x0003ABF2-0x0003ABF6, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$4D
	dc.b	$00, $0F ;0x0 (0x0003ABFA-0x0003ABFC, Entry count: 0x00000002) [Unknown data]
	dc.w	$0F	;Predicted (Code target predicted at 0x10D33)
	dc.b	$2C
	dc.b	$B3
	dc.b	$00, $3A ;0x0 (0x0003AC00-0x0003AC02, Entry count: 0x00000002) [Unknown data]
	dc.w	$34	;Predicted (Code target predicted at 0x10D58)
	dc.b	$00, $63, $00, $00 ;0x0 (0x0003AC04-0x0003AC08, Entry count: 0x00000004) [Unknown data]

Enemy_Mazrbot:
	dc.l	ArtComp_Lazrbot
	dc.b	$00, $35 ;0x0 (0x0003AC0A-0x0003AC0E, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Mazrbot-EnemyNameData
	dc.b	$00, $85 ;0x0 (0x0003AC10-0x0003AC14, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$4D
	dc.b	$00, $17 ;0x0 (0x0003AC18-0x0003AC1A, Entry count: 0x00000002) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.b	$44
	dc.b	$B3
	dc.b	$02, $3A ;0x0 (0x0003AC1E-0x0003AC20, Entry count: 0x00000002) [Unknown data]
	dc.w	$7C	;Predicted (Code target predicted at 0x10DA0)
	dc.b	$00, $AA, $00, $00 ;0x0 (0x0003AC22-0x0003AC26, Entry count: 0x00000004) [Unknown data]

Enemy_Fazrbot:
	dc.l	ArtComp_Lazrbot
	dc.b	$00, $36 ;0x0 (0x0003AC28-0x0003AC2C, Entry count: 0x00000004) [Unknown data]
	dc.w	$1A	;Predicted (Code target predicted at 0x10D3E)
	dc.w	EnemyName_Fazrbot-EnemyNameData
	dc.b	$00, $64 ;0x0 (0x0003AC2E-0x0003AC32, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$4D
	dc.b	$00, $1E ;0x0 (0x0003AC36-0x0003AC38, Entry count: 0x00000002) [Unknown data]
	dc.w	$53	;Predicted (Code target predicted at 0x10D77)
	dc.b	$50
	dc.b	$B3
	dc.b	$06, $54 ;0x0 (0x0003AC3C-0x0003AC3E, Entry count: 0x00000002) [Unknown data]
	dc.w	$172	;Predicted (Code target predicted at 0x10E96)
	dc.b	$00, $DC, $00, $00 ;0x0 (0x0003AC40-0x0003AC44, Entry count: 0x00000004) [Unknown data]

Enemy_RightHand:
	dc.b	$00, $00, $00, $00, $00, $36 ;0x0 (0x0003AC46-0x0003AC4A, Entry count: 0x00000004) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.w	EnemyName_RightHand-EnemyNameData
	dc.b	$04, $B0 ;0x0 (0x0003AC4C-0x0003AC50, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$80
	dc.b	$00, $3C ;0x0 (0x0003AC54-0x0003AC56, Entry count: 0x00000002) [Unknown data]
	dc.w	$17C	;Predicted (Code target predicted at 0x10EA0)
	dc.b	$82 ;0x0 (0x0003AC58-0x0003AC59, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$06, $54 ;0x0 (0x0003AC5A-0x0003AC5C, Entry count: 0x00000002) [Unknown data]
	dc.w	$172	;Predicted (Code target predicted at 0x10E96)
	dc.b	$00, $DC, $2C, $0F ;0x0 (0x0003AC5E-0x0003AC62, Entry count: 0x00000004) [Unknown data]

Enemy_LeftHand:
	dc.b	$00, $00, $00, $00, $00, $36 ;0x0 (0x0003AC64-0x0003AC68, Entry count: 0x00000004) [Unknown data]
	dc.w	$2E	;Predicted (Code target predicted at 0x10D52)
	dc.w	EnemyName_LeftHand-EnemyNameData
	dc.b	$01, $2C ;0x0 (0x0003AC6A-0x0003AC6E, Entry count: 0x00000004) [Unknown data]
	dc.w	$58
	dc.b	$63
	dc.b	$E6
	dc.b	$00, $1E ;0x0 (0x0003AC72-0x0003AC74, Entry count: 0x00000002) [Unknown data]
	dc.w	$1E0	;Predicted (Code target predicted at 0x10F04)
	dc.b	$3C ;0x0 (0x0003AC76-0x0003AC77, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$06, $54 ;0x0 (0x0003AC78-0x0003AC7A, Entry count: 0x00000002) [Unknown data]
	dc.w	$172	;Predicted (Code target predicted at 0x10E96)
	dc.b	$00, $DC, $2C, $0F ;0x0 (0x0003AC7C-0x0003AC80, Entry count: 0x00000004) [Unknown data]


EnemyDataBackRow:

Enemy_Emir:
	dc.l	ArtComp_Emir
	dc.b	$00, $37 ;0x0 (0x0003AC82-0x0003AC86, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Emir-EnemyNameData
	dc.b	$00, $80 ;0x0 (0x0003AC88-0x0003AC8C, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$05 ;0x0 (0x0003AC8E-0x0003AC8F, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $32 ;0x0 (0x0003AC90-0x0003AC92, Entry count: 0x00000002) [Unknown data]
	dc.w	$20	;Predicted (Code target predicted at 0x10D44)
	dc.b	$0F
	dc.b	$B3
	dc.b	$10, $6B ;0x0 (0x0003AC96-0x0003AC98, Entry count: 0x00000002) [Unknown data]
	dc.w	$280	;Predicted (Code target predicted at 0x10FA4)
	dc.b	$01, $BD, $04, $0E ;0x0 (0x0003AC9A-0x0003AC9E, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9369C
	dc.b	$08
	dc.b	$0C

Enemy_Sheik:
	dc.l	ArtComp_Emir
	dc.b	$00, $38 ;0x0 (0x0003ACA6-0x0003ACAA, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Sheik-EnemyNameData
	dc.b	$00, $8C ;0x0 (0x0003ACAC-0x0003ACB0, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$05, $33, $00, $34 ;0x0 (0x0003ACB2-0x0003ACB6, Entry count: 0x00000004) [Unknown data]
	dc.w	$26	;Predicted (Code target predicted at 0x10D4A)
	dc.b	$19, $B3, $12, $16 ;0x0 (0x0003ACB8-0x0003ACBC, Entry count: 0x00000004) [Unknown data]
	dc.w	$370	;Predicted (Code target predicted at 0x11094)
	dc.b	$01, $CD, $04, $0E ;0x0 (0x0003ACBE-0x0003ACC2, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9369C
	dc.b	$08, $0C ;0x0 (0x0003ACC4-0x0003ACC8, Entry count: 0x00000004) [Unknown data]

Enemy_Caliph:
	dc.l	ArtComp_Emir
	dc.b	$00, $39 ;0x0 (0x0003ACCA-0x0003ACCE, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Caliph-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003ACD0-0x0003ACD4, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$06
	dc.b	$33
	dc.b	$00, $3C ;0x0 (0x0003ACD8-0x0003ACDA, Entry count: 0x00000002) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.b	$23
	dc.b	$B3
	dc.b	$1C, $20 ;0x0 (0x0003ACDE-0x0003ACE0, Entry count: 0x00000002) [Unknown data]
	dc.w	$3F3	;Predicted (Code target predicted at 0x11117)
	dc.b	$01, $F7, $04, $0E ;0x0 (0x0003ACE2-0x0003ACE6, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9369C
	dc.b	$08
	dc.b	$0C

Enemy_Harpy:
	dc.l	ArtComp_Harpy
	dc.b	$00, $3A ;0x0 (0x0003ACEE-0x0003ACF2, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Harpy-EnemyNameData
	dc.b	$00, $64 ;0x0 (0x0003ACF4-0x0003ACF8, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $1E ;0x0 (0x0003ACFC-0x0003ACFE, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$32
	dc.b	$99
	dc.b	$01, $50 ;0x0 (0x0003AD02-0x0003AD04, Entry count: 0x00000002) [Unknown data]
	dc.w	$81	;Predicted (Code target predicted at 0x10DA5)
	dc.b	$01, $04, $00, $0E ;0x0 (0x0003AD06-0x0003AD0A, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_938A8
	dc.b	$08
	dc.b	$0C

Enemy_Griffin:
	dc.l	ArtComp_Harpy
	dc.b	$00, $3B ;0x0 (0x0003AD12-0x0003AD16, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Griffin-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003AD18-0x0003AD1C, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$4D
	dc.b	$00, $29 ;0x0 (0x0003AD20-0x0003AD22, Entry count: 0x00000002) [Unknown data]
	dc.w	$62	;Predicted (Code target predicted at 0x10D86)
	dc.b	$57
	dc.b	$99
	dc.b	$06, $9B ;0x0 (0x0003AD26-0x0003AD28, Entry count: 0x00000002) [Unknown data]
	dc.w	$1B6	;Predicted (Code target predicted at 0x10EDA)
	dc.b	$01, $93, $00, $0E ;0x0 (0x0003AD2A-0x0003AD2E, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_938A8
	dc.b	$08
	dc.b	$0C

Enemy_Gryphon:
	dc.l	ArtComp_Harpy
	dc.b	$00, $3C ;0x0 (0x0003AD36-0x0003AD3A, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Gryphon-EnemyNameData
	dc.b	$00, $C8 ;0x0 (0x0003AD3C-0x0003AD40, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$03, $4D, $00, $35 ;0x0 (0x0003AD42-0x0003AD46, Entry count: 0x00000004) [Unknown data]
	dc.w	$63	;Predicted (Code target predicted at 0x10D87)
	dc.b	$64, $99, $12, $6A ;0x0 (0x0003AD48-0x0003AD4C, Entry count: 0x00000004) [Unknown data]
	dc.w	$318	;Predicted (Code target predicted at 0x1103C)
	dc.b	$01, $CC, $00, $0E ;0x0 (0x0003AD4E-0x0003AD52, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_938A8
	dc.b	$08, $0C ;0x0 (0x0003AD54-0x0003AD58, Entry count: 0x00000004) [Unknown data]

Enemy_Banshee:
	dc.l	ArtComp_Banshee
	dc.b	$00, $3D ;0x0 (0x0003AD5A-0x0003AD5E, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Banshee-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003AD60-0x0003AD64, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$4D
	dc.b	$00, $0A ;0x0 (0x0003AD68-0x0003AD6A, Entry count: 0x00000002) [Unknown data]
	dc.w	$5A	;Predicted (Code target predicted at 0x10D7E)
	dc.b	$51
	dc.b	$CC
	dc.b	$05, $01 ;0x0 (0x0003AD6E-0x0003AD70, Entry count: 0x00000002) [Unknown data]
	dc.w	$149	;Predicted (Code target predicted at 0x10E6D)
	dc.b	$01, $8A, $08, $01 ;0x0 (0x0003AD72-0x0003AD76, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93248
	dc.b	$08
	dc.b	$0C

Enemy_Ghost:
	dc.l	ArtComp_Banshee
	dc.b	$00, $3E ;0x0 (0x0003AD7E-0x0003AD82, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Ghost-EnemyNameData
	dc.b	$00, $BE ;0x0 (0x0003AD84-0x0003AD88, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$05
	dc.b	$4D
	dc.b	$00, $0C ;0x0 (0x0003AD8C-0x0003AD8E, Entry count: 0x00000002) [Unknown data]
	dc.w	$5A	;Predicted (Code target predicted at 0x10D7E)
	dc.b	$5C
	dc.b	$CC
	dc.b	$07, $48 ;0x0 (0x0003AD92-0x0003AD94, Entry count: 0x00000002) [Unknown data]
	dc.w	$1E0	;Predicted (Code target predicted at 0x10F04)
	dc.b	$01, $9C, $08, $01 ;0x0 (0x0003AD96-0x0003AD9A, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93248
	dc.b	$08
	dc.b	$0C

Enemy_Haunt:
	dc.l	ArtComp_Banshee
	dc.b	$00, $3F ;0x0 (0x0003ADA2-0x0003ADA6, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Haunt-EnemyNameData
	dc.b	$00, $C3 ;0x0 (0x0003ADA8-0x0003ADAC, Entry count: 0x00000004) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$05, $4D, $00, $0E ;0x0 (0x0003ADAE-0x0003ADB2, Entry count: 0x00000004) [Unknown data]
	dc.w	$5A	;Predicted (Code target predicted at 0x10D7E)
	dc.b	$78, $CC, $0B, $C3 ;0x0 (0x0003ADB4-0x0003ADB8, Entry count: 0x00000004) [Unknown data]
	dc.w	$2CE	;Predicted (Code target predicted at 0x10FF2)
	dc.b	$01, $CD, $08, $01 ;0x0 (0x0003ADBA-0x0003ADBE, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93248
	dc.b	$08, $0C ;0x0 (0x0003ADC0-0x0003ADC4, Entry count: 0x00000004) [Unknown data]

Enemy_Beastess:
	dc.l	ArtComp_Beastess
	dc.b	$00, $40 ;0x0 (0x0003ADC6-0x0003ADCA, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Beastess-EnemyNameData
	dc.b	$00, $71 ;0x0 (0x0003ADCC-0x0003ADD0, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$01 ;0x0 (0x0003ADD2-0x0003ADD3, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $1F ;0x0 (0x0003ADD4-0x0003ADD6, Entry count: 0x00000002) [Unknown data]
	dc.w	$2A	;Predicted (Code target predicted at 0x10D4E)
	dc.b	$65
	dc.b	$99
	dc.b	$02, $45 ;0x0 (0x0003ADDA-0x0003ADDC, Entry count: 0x00000002) [Unknown data]
	dc.w	$58	;Predicted (Code target predicted at 0x10D7C)
	dc.b	$01, $1C, $00, $00 ;0x0 (0x0003ADDE-0x0003ADE2, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_94B24
	dc.b	$08
	dc.b	$0C

Enemy_Trogess:
	dc.l	ArtComp_Beastess
	dc.b	$00, $41 ;0x0 (0x0003ADEA-0x0003ADEE, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Trogess-EnemyNameData
	dc.b	$00, $E6 ;0x0 (0x0003ADF0-0x0003ADF4, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $32 ;0x0 (0x0003ADF8-0x0003ADFA, Entry count: 0x00000002) [Unknown data]
	dc.w	$52	;Predicted (Code target predicted at 0x10D76)
	dc.b	$5A
	dc.b	$99
	dc.b	$07, $1B ;0x0 (0x0003ADFE-0x0003AE00, Entry count: 0x00000002) [Unknown data]
	dc.w	$142	;Predicted (Code target predicted at 0x10E66)
	dc.b	$01, $84, $00, $00 ;0x0 (0x0003AE02-0x0003AE06, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_94B24
	dc.b	$08
	dc.b	$0C

Enemy_Demoness:
	dc.l	ArtComp_Beastess
	dc.b	$00, $42 ;0x0 (0x0003AE0E-0x0003AE12, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Demoness-EnemyNameData
	dc.b	$01, $0E ;0x0 (0x0003AE14-0x0003AE18, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $46 ;0x0 (0x0003AE1C-0x0003AE1E, Entry count: 0x00000002) [Unknown data]
	dc.w	$78	;Predicted (Code target predicted at 0x10D9C)
	dc.b	$6E
	dc.b	$99
	dc.b	$14, $04 ;0x0 (0x0003AE22-0x0003AE24, Entry count: 0x00000002) [Unknown data]
	dc.w	$320	;Predicted (Code target predicted at 0x11044)
	dc.b	$01, $E9, $00, $00 ;0x0 (0x0003AE26-0x0003AE2A, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_94B24
	dc.b	$08
	dc.b	$0C

Enemy_Bushi:
	dc.l	ArtComp_Bushi
	dc.b	$00, $43 ;0x0 (0x0003AE32-0x0003AE36, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Bushi-EnemyNameData
	dc.b	$00, $64 ;0x0 (0x0003AE38-0x0003AE3C, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $27 ;0x0 (0x0003AE40-0x0003AE42, Entry count: 0x00000002) [Unknown data]
	dc.w	$1E	;Predicted (Code target predicted at 0x10D42)
	dc.b	$44
	dc.b	$99
	dc.b	$01, $02 ;0x0 (0x0003AE46-0x0003AE48, Entry count: 0x00000002) [Unknown data]
	dc.w	$2F	;Predicted (Code target predicted at 0x10D53)
	dc.b	$00, $ED, $00, $00 ;0x0 (0x0003AE4A-0x0003AE4E, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_949C4
	dc.b	$08
	dc.b	$0C

Enemy_Kensai:
	dc.l	ArtComp_Bushi
	dc.b	$00, $44 ;0x0 (0x0003AE56-0x0003AE5A, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Kensai-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003AE5C-0x0003AE60, Entry count: 0x00000004) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$01 ;0x0 (0x0003AE62-0x0003AE63, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $29 ;0x0 (0x0003AE64-0x0003AE66, Entry count: 0x00000002) [Unknown data]
	dc.w	$37	;Predicted (Code target predicted at 0x10D5B)
	dc.b	$4F
	dc.b	$99
	dc.b	$04, $BE ;0x0 (0x0003AE6A-0x0003AE6C, Entry count: 0x00000002) [Unknown data]
	dc.w	$7B	;Predicted (Code target predicted at 0x10D9F)
	dc.b	$01, $76, $00, $00 ;0x0 (0x0003AE6E-0x0003AE72, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_949C4
	dc.b	$08
	dc.b	$0C

Enemy_Samurai:
	dc.l	ArtComp_Bushi
	dc.b	$00, $45 ;0x0 (0x0003AE7A-0x0003AE7E, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Samurai-EnemyNameData
	dc.b	$01, $55 ;0x0 (0x0003AE80-0x0003AE84, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $41 ;0x0 (0x0003AE88-0x0003AE8A, Entry count: 0x00000002) [Unknown data]
	dc.w	$3C	;Predicted (Code target predicted at 0x10D60)
	dc.b	$78
	dc.b	$99
	dc.b	$0A, $F0 ;0x0 (0x0003AE8E-0x0003AE90, Entry count: 0x00000002) [Unknown data]
	dc.w	$276	;Predicted (Code target predicted at 0x10F9A)
	dc.b	$01, $E1, $00, $00 ;0x0 (0x0003AE92-0x0003AE96, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_949C4
	dc.b	$08
	dc.b	$0C

Enemy_Irisa:
	dc.l	ArtComp_Irisa
	dc.b	$00, $46 ;0x0 (0x0003AE9E-0x0003AEA2, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Irisa-EnemyNameData
	dc.b	$00, $68 ;0x0 (0x0003AEA4-0x0003AEA8, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003AEAC-0x0003AEAE, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$1C
	dc.b	$E6
	dc.b	$00, $12 ;0x0 (0x0003AEB2-0x0003AEB4, Entry count: 0x00000002) [Unknown data]
	dc.w	$18	;Predicted (Code target predicted at 0x10D3C)
	dc.b	$00, $97, $08, $08 ;0x0 (0x0003AEB6-0x0003AEBA, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_932D4
	dc.b	$08
	dc.b	$0C

Enemy_Rosa:
	dc.l	ArtComp_Irisa
	dc.b	$00, $47 ;0x0 (0x0003AEC2-0x0003AEC6, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Rosa-EnemyNameData
	dc.b	$00, $92 ;0x0 (0x0003AEC8-0x0003AECC, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003AED0-0x0003AED2, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$30
	dc.b	$E6
	dc.b	$00, $50 ;0x0 (0x0003AED6-0x0003AED8, Entry count: 0x00000002) [Unknown data]
	dc.w	$41	;Predicted (Code target predicted at 0x10D65)
	dc.b	$00, $D7, $08, $08 ;0x0 (0x0003AEDA-0x0003AEDE, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_932D4
	dc.b	$08
	dc.b	$0C

Enemy_Viola:
	dc.l	ArtComp_Irisa
	dc.b	$00, $48 ;0x0 (0x0003AEE6-0x0003AEEA, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Viola-EnemyNameData
	dc.b	$00, $BE ;0x0 (0x0003AEEC-0x0003AEF0, Entry count: 0x00000004) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$33
	dc.b	$00, $27 ;0x0 (0x0003AEF4-0x0003AEF6, Entry count: 0x00000002) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$58
	dc.b	$E6
	dc.b	$03, $5D ;0x0 (0x0003AEFA-0x0003AEFC, Entry count: 0x00000002) [Unknown data]
	dc.w	$136	;Predicted (Code target predicted at 0x10E5A)
	dc.b	$01, $85, $08, $08 ;0x0 (0x0003AEFE-0x0003AF02, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_932D4
	dc.b	$08
	dc.b	$0C

Enemy_Moos:
	dc.l	ArtComp_Moos
	dc.b	$00, $49 ;0x0 (0x0003AF0A-0x0003AF0E, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Moos-EnemyNameData
	dc.b	$00, $1E ;0x0 (0x0003AF10-0x0003AF14, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$33
	dc.b	$00, $05 ;0x0 (0x0003AF18-0x0003AF1A, Entry count: 0x00000002) [Unknown data]
	dc.w	$05	;Predicted (Code target predicted at 0x10D29)
	dc.b	$0E
	dc.b	$E6
	dc.b	$00, $04 ;0x0 (0x0003AF1E-0x0003AF20, Entry count: 0x00000002) [Unknown data]
	dc.w	$09	;Predicted (Code target predicted at 0x10D2D)
	dc.b	$00, $3F, $00, $01 ;0x0 (0x0003AF22-0x0003AF26, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93820
	dc.b	$08
	dc.b	$0C

Enemy_Fearmoos:
	dc.l	ArtComp_Moos
	dc.b	$00, $4A ;0x0 (0x0003AF2E-0x0003AF32, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Fearmoos-EnemyNameData
	dc.b	$00, $64 ;0x0 (0x0003AF34-0x0003AF38, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$33
	dc.b	$00, $14 ;0x0 (0x0003AF3C-0x0003AF3E, Entry count: 0x00000002) [Unknown data]
	dc.w	$14	;Predicted (Code target predicted at 0x10D38)
	dc.b	$28
	dc.b	$E6
	dc.b	$00, $0C ;0x0 (0x0003AF42-0x0003AF44, Entry count: 0x00000002) [Unknown data]
	dc.w	$10	;Predicted (Code target predicted at 0x10D34)
	dc.b	$00, $AE, $00, $01 ;0x0 (0x0003AF46-0x0003AF4A, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93820
	dc.b	$08
	dc.b	$0C

Enemy_Diremoos:
	dc.l	ArtComp_Moos
	dc.b	$00, $4B ;0x0 (0x0003AF52-0x0003AF56, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Diremoos-EnemyNameData
	dc.b	$01, $2F ;0x0 (0x0003AF58-0x0003AF5C, Entry count: 0x00000004) [Unknown data]
	dc.w	$48
	dc.b	$05
	dc.b	$33
	dc.b	$00, $27 ;0x0 (0x0003AF60-0x0003AF62, Entry count: 0x00000002) [Unknown data]
	dc.w	$5F	;Predicted (Code target predicted at 0x10D83)
	dc.b	$5F
	dc.b	$E6
	dc.b	$07, $F3 ;0x0 (0x0003AF66-0x0003AF68, Entry count: 0x00000002) [Unknown data]
	dc.w	$258	;Predicted (Code target predicted at 0x10F7C)
	dc.b	$01, $A5, $00, $01 ;0x0 (0x0003AF6A-0x0003AF6E, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93820
	dc.b	$08
	dc.b	$0C

Enemy_Blueroot:
	dc.l	ArtComp_Blueroot
	dc.b	$00, $4C ;0x0 (0x0003AF76-0x0003AF7A, Entry count: 0x00000004) [Unknown data]
	dc.w	$26	;Predicted (Code target predicted at 0x10D4A)
	dc.w	EnemyName_Blueroot-EnemyNameData
	dc.b	$00, $5A ;0x0 (0x0003AF7C-0x0003AF80, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$03
	dc.b	$33
	dc.b	$00, $1F ;0x0 (0x0003AF84-0x0003AF86, Entry count: 0x00000002) [Unknown data]
	dc.w	$19	;Predicted (Code target predicted at 0x10D3D)
	dc.b	$3C
	dc.b	$E6
	dc.b	$00, $FF ;0x0 (0x0003AF8A-0x0003AF8C, Entry count: 0x00000002) [Unknown data]
	dc.w	$6B	;Predicted (Code target predicted at 0x10D8F)
	dc.b	$01, $54, $24, $0C ;0x0 (0x0003AF8E-0x0003AF92, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9480C
	dc.b	$08
	dc.b	$0C

Enemy_Pinkroot:
	dc.l	ArtComp_Blueroot
	dc.b	$00, $4D ;0x0 (0x0003AF9A-0x0003AF9E, Entry count: 0x00000004) [Unknown data]
	dc.w	$26	;Predicted (Code target predicted at 0x10D4A)
	dc.w	EnemyName_Pinkroot-EnemyNameData
	dc.b	$00, $5F ;0x0 (0x0003AFA0-0x0003AFA4, Entry count: 0x00000004) [Unknown data]
	dc.w	$54	;Predicted (Code target predicted at 0x10D78)
	dc.b	$04 ;0x0 (0x0003AFA6-0x0003AFA7, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $27 ;0x0 (0x0003AFA8-0x0003AFAA, Entry count: 0x00000002) [Unknown data]
	dc.w	$2D	;Predicted (Code target predicted at 0x10D51)
	dc.b	$4B
	dc.b	$E6
	dc.b	$01, $EA ;0x0 (0x0003AFAE-0x0003AFB0, Entry count: 0x00000002) [Unknown data]
	dc.w	$85	;Predicted (Code target predicted at 0x10DA9)
	dc.b	$01, $72, $24, $0C ;0x0 (0x0003AFB2-0x0003AFB6, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9480C
	dc.b	$08
	dc.b	$0C

Enemy_Goldroot:
	dc.l	ArtComp_Blueroot
	dc.b	$00, $4E ;0x0 (0x0003AFBE-0x0003AFC2, Entry count: 0x00000004) [Unknown data]
	dc.w	$26	;Predicted (Code target predicted at 0x10D4A)
	dc.w	EnemyName_Goldroot-EnemyNameData
	dc.b	$00, $6E ;0x0 (0x0003AFC4-0x0003AFC8, Entry count: 0x00000004) [Unknown data]
	dc.w	$54
	dc.b	$05
	dc.b	$33
	dc.b	$00, $37 ;0x0 (0x0003AFCC-0x0003AFCE, Entry count: 0x00000002) [Unknown data]
	dc.w	$64	;Predicted (Code target predicted at 0x10D88)
	dc.b	$6E
	dc.b	$E6
	dc.b	$08, $97 ;0x0 (0x0003AFD2-0x0003AFD4, Entry count: 0x00000002) [Unknown data]
	dc.w	$325	;Predicted (Code target predicted at 0x11049)
	dc.b	$02, $00, $24, $0C ;0x0 (0x0003AFD6-0x0003AFDA, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_9480C
	dc.b	$08
	dc.b	$0C

Enemy_Catwoman:
	dc.l	ArtComp_Catwoman
	dc.b	$00, $4F ;0x0 (0x0003AFE2-0x0003AFE6, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Catwoman-EnemyNameData
	dc.b	$00, $3A ;0x0 (0x0003AFE8-0x0003AFEC, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $1E ;0x0 (0x0003AFF0-0x0003AFF2, Entry count: 0x00000002) [Unknown data]
	dc.w	$1F	;Predicted (Code target predicted at 0x10D43)
	dc.b	$37
	dc.b	$B3
	dc.b	$00, $95 ;0x0 (0x0003AFF6-0x0003AFF8, Entry count: 0x00000002) [Unknown data]
	dc.w	$20	;Predicted (Code target predicted at 0x10D44)
	dc.b	$00, $EF, $00, $00 ;0x0 (0x0003AFFA-0x0003AFFE, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_945C4
	dc.b	$08
	dc.b	$0C

Enemy_Tigress:
	dc.l	ArtComp_Catwoman
	dc.b	$00, $50 ;0x0 (0x0003B006-0x0003B00A, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Tigress-EnemyNameData
	dc.b	$00, $5A ;0x0 (0x0003B00C-0x0003B010, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $28 ;0x0 (0x0003B014-0x0003B016, Entry count: 0x00000002) [Unknown data]
	dc.w	$2C	;Predicted (Code target predicted at 0x10D50)
	dc.b	$41
	dc.b	$B3
	dc.b	$00, $E7 ;0x0 (0x0003B01A-0x0003B01C, Entry count: 0x00000002) [Unknown data]
	dc.w	$3F	;Predicted (Code target predicted at 0x10D63)
	dc.b	$01, $0F, $00, $00 ;0x0 (0x0003B01E-0x0003B022, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_945C4
	dc.b	$08
	dc.b	$0C

Enemy_Lioness:
	dc.l	ArtComp_Catwoman
	dc.b	$00, $51 ;0x0 (0x0003B02A-0x0003B02E, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Lioness-EnemyNameData
	dc.b	$01, $18 ;0x0 (0x0003B030-0x0003B034, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$03 ;0x0 (0x0003B036-0x0003B037, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $32 ;0x0 (0x0003B038-0x0003B03A, Entry count: 0x00000002) [Unknown data]
	dc.w	$96	;Predicted (Code target predicted at 0x10DBA)
	dc.b	$64
	dc.b	$B3
	dc.b	$0B, $B8 ;0x0 (0x0003B03E-0x0003B040, Entry count: 0x00000002) [Unknown data]
	dc.w	$104	;Predicted (Code target predicted at 0x10E28)
	dc.b	$01, $CC, $00, $00 ;0x0 (0x0003B042-0x0003B046, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_945C4
	dc.b	$08
	dc.b	$0C

Enemy_Lobowing:
	dc.l	ArtComp_Lobowing
	dc.b	$00, $52 ;0x0 (0x0003B04E-0x0003B052, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Lobowing-EnemyNameData
	dc.b	$00, $42 ;0x0 (0x0003B054-0x0003B058, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $10 ;0x0 (0x0003B05C-0x0003B05E, Entry count: 0x00000002) [Unknown data]
	dc.w	$0B	;Predicted (Code target predicted at 0x10D2F)
	dc.b	$1A
	dc.b	$99
	dc.b	$00, $08 ;0x0 (0x0003B062-0x0003B064, Entry count: 0x00000002) [Unknown data]
	dc.w	$18	;Predicted (Code target predicted at 0x10D3C)
	dc.b	$00, $3E, $00, $04 ;0x0 (0x0003B066-0x0003B06A, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93600
	dc.b	$08
	dc.b	$0C

Enemy_Lobobat:
	dc.l	ArtComp_Lobowing
	dc.b	$00, $53 ;0x0 (0x0003B072-0x0003B076, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Lobobat-EnemyNameData
	dc.b	$00, $7C ;0x0 (0x0003B078-0x0003B07C, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $14 ;0x0 (0x0003B080-0x0003B082, Entry count: 0x00000002) [Unknown data]
	dc.w	$0B	;Predicted (Code target predicted at 0x10D2F)
	dc.b	$34
	dc.b	$99
	dc.b	$00, $21 ;0x0 (0x0003B086-0x0003B088, Entry count: 0x00000002) [Unknown data]
	dc.w	$27	;Predicted (Code target predicted at 0x10D4B)
	dc.b	$00, $AE, $00, $04 ;0x0 (0x0003B08A-0x0003B08E, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93600
	dc.b	$08
	dc.b	$0C

Enemy_Lobohawk:
	dc.l	ArtComp_Lobowing
	dc.b	$00, $54 ;0x0 (0x0003B096-0x0003B09A, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Lobohawk-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003B09C-0x0003B0A0, Entry count: 0x00000004) [Unknown data]
	dc.w	$50
	dc.b	$03
	dc.b	$1A
	dc.b	$00, $29 ;0x0 (0x0003B0A4-0x0003B0A6, Entry count: 0x00000002) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$78
	dc.b	$99
	dc.b	$08, $34 ;0x0 (0x0003B0AA-0x0003B0AC, Entry count: 0x00000002) [Unknown data]
	dc.w	$16A	;Predicted (Code target predicted at 0x10E8E)
	dc.b	$01, $7D, $00, $04 ;0x0 (0x0003B0AE-0x0003B0B2, Entry count: 0x00000004) [Unknown data]
	dc.l	loc_93600
	dc.b	$08
	dc.b	$0C

Enemy_Hopliz:
	dc.l	ArtComp_Hopliz
	dc.b	$00, $55 ;0x0 (0x0003B0BA-0x0003B0BE, Entry count: 0x00000004) [Unknown data]
	dc.w	$06	;Predicted (Code target predicted at 0x10D2A)
	dc.w	EnemyName_Hopliz-EnemyNameData
	dc.b	$00, $54 ;0x0 (0x0003B0C0-0x0003B0C4, Entry count: 0x00000004) [Unknown data]
	dc.w	$4C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $10, $00, $0F ;0x0 (0x0003B0C8-0x0003B0CC, Entry count: 0x00000004) [Unknown data]
	dc.b	$24
	dc.b	$99
	dc.b	$00, $10, $00, $0D, $00, $52, $00, $00 ;0x0 (0x0003B0CE-0x0003B0D6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94780
	dc.b	$08
	dc.b	$0C

Enemy_Leapliz:
	dc.l	ArtComp_Hopliz
	dc.b	$00, $56, $00, $06
	dc.w	EnemyName_Leapliz-EnemyNameData
	dc.b	$00, $9E ;0x0 (0x0003B0E0-0x0003B0E8, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$01 ;0x0 (0x0003B0EA-0x0003B0EB, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $15, $00, $0F ;0x0 (0x0003B0EC-0x0003B0F0, Entry count: 0x00000004) [Unknown data]
	dc.b	$43
	dc.b	$99
	dc.b	$00, $7B, $00, $37, $00, $A0, $00, $00 ;0x0 (0x0003B0F2-0x0003B0FA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94780
	dc.b	$08
	dc.b	$0C

Enemy_Jumpliz:
	dc.l	ArtComp_Hopliz
	dc.b	$00, $57, $00, $06
	dc.w	EnemyName_Jumpliz-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003B100-0x0003B10C, Entry count: 0x0000000C) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$01, $1A, $00, $26, $00, $58, $71, $99, $04, $00, $01, $37, $01, $12, $00, $00
	dc.l	loc_94780
	dc.b	$08, $0C ;0x0 (0x0003B10E-0x0003B124, Entry count: 0x00000016) [Unknown data]

Enemy_Glowtoad:
	dc.l	ArtComp_Glowtoad
	dc.b	$00, $58, $00, $06
	dc.w	EnemyName_Glowtoad-EnemyNameData
	dc.b	$00, $1E ;0x0 (0x0003B128-0x0003B130, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C	;Predicted (Code target predicted at 0x10D80)
	dc.b	$01 ;0x0 (0x0003B132-0x0003B133, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $07, $00, $01 ;0x0 (0x0003B134-0x0003B138, Entry count: 0x00000004) [Unknown data]
	dc.b	$03
	dc.b	$E6
	dc.b	$00, $01, $00, $01, $00, $08, $00, $00 ;0x0 (0x0003B13A-0x0003B142, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93380
	dc.b	$08
	dc.b	$0C

Enemy_Gilatoad:
	dc.l	ArtComp_Glowtoad
	dc.b	$00, $59, $00, $06
	dc.w	EnemyName_Gilatoad-EnemyNameData
	dc.b	$00, $72 ;0x0 (0x0003B14C-0x0003B154, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $11, $00, $01 ;0x0 (0x0003B158-0x0003B15C, Entry count: 0x00000004) [Unknown data]
	dc.b	$17
	dc.b	$E6
	dc.b	$00, $01, $00, $01, $00, $36, $00, $00 ;0x0 (0x0003B15E-0x0003B166, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93380
	dc.b	$08
	dc.b	$0C

Enemy_Megatoad:
	dc.l	ArtComp_Glowtoad
	dc.b	$00, $5A, $00, $06
	dc.w	EnemyName_Megatoad-EnemyNameData
	dc.b	$00, $C8 ;0x0 (0x0003B170-0x0003B178, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $22, $00, $5C ;0x0 (0x0003B17C-0x0003B180, Entry count: 0x00000004) [Unknown data]
	dc.b	$50
	dc.b	$E6
	dc.b	$00, $C9, $00, $03, $00, $CE, $00, $00 ;0x0 (0x0003B182-0x0003B18A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93380
	dc.b	$08
	dc.b	$0C

Enemy_Seeker:
	dc.l	ArtComp_Seeker
	dc.b	$00, $5B, $00, $06
	dc.w	EnemyName_Seeker-EnemyNameData
	dc.b	$00, $51 ;0x0 (0x0003B194-0x0003B19C, Entry count: 0x00000008) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$01 ;0x0 (0x0003B19E-0x0003B19F, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $12, $00, $50 ;0x0 (0x0003B1A0-0x0003B1A4, Entry count: 0x00000004) [Unknown data]
	dc.b	$2B
	dc.b	$CC
	dc.b	$00, $54, $00, $48, $00, $96, $00, $00 ;0x0 (0x0003B1A6-0x0003B1AE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93558
	dc.b	$08
	dc.b	$0C

Enemy_Hunter:
	dc.l	ArtComp_Seeker
	dc.b	$00, $5C, $00, $06
	dc.w	EnemyName_Hunter-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003B1B8-0x0003B1C0, Entry count: 0x00000008) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$01 ;0x0 (0x0003B1C2-0x0003B1C3, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $18, $00, $53 ;0x0 (0x0003B1C4-0x0003B1C8, Entry count: 0x00000004) [Unknown data]
	dc.b	$36
	dc.b	$CC
	dc.b	$00, $AD, $00, $58, $00, $C2, $00, $00 ;0x0 (0x0003B1CA-0x0003B1D2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93558
	dc.b	$08
	dc.b	$0C

Enemy_Killer:
	dc.l	ArtComp_Seeker
	dc.b	$00, $5D, $00, $06
	dc.w	EnemyName_Killer-EnemyNameData
	dc.b	$00, $BA ;0x0 (0x0003B1DC-0x0003B1E4, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $1E, $00, $96 ;0x0 (0x0003B1E8-0x0003B1EC, Entry count: 0x00000004) [Unknown data]
	dc.b	$53
	dc.b	$CC
	dc.b	$03, $84, $01, $8D, $01, $2A, $00, $00 ;0x0 (0x0003B1EE-0x0003B1F6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93558
	dc.b	$08
	dc.b	$0C

Enemy_Roboman:
	dc.l	ArtComp_Roboman
	dc.b	$00, $5E, $00, $06
	dc.w	EnemyName_Roboman-EnemyNameData
	dc.b	$00, $96 ;0x0 (0x0003B200-0x0003B208, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $37, $00, $98 ;0x0 (0x0003B20C-0x0003B210, Entry count: 0x00000004) [Unknown data]
	dc.b	$53
	dc.b	$CC
	dc.b	$0A, $28, $00, $25, $01, $89, $20, $00 ;0x0 (0x0003B212-0x0003B21A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92DB0
	dc.b	$08
	dc.b	$0C

Enemy_Mechman:
	dc.l	ArtComp_Roboman
	dc.b	$00, $5F, $00, $06
	dc.w	EnemyName_Mechman-EnemyNameData
	dc.b	$00, $9E ;0x0 (0x0003B224-0x0003B22C, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$1A
	dc.b	$00, $3E, $00, $9A ;0x0 (0x0003B230-0x0003B234, Entry count: 0x00000004) [Unknown data]
	dc.b	$5F
	dc.b	$CC
	dc.b	$10, $CC, $00, $30, $01, $C3, $20, $00 ;0x0 (0x0003B236-0x0003B23E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92DB0
	dc.b	$08
	dc.b	$0C

Enemy_Droidman:
	dc.l	ArtComp_Roboman
	dc.b	$00, $60, $00, $06
	dc.w	EnemyName_Droidman-EnemyNameData
	dc.b	$00, $A3 ;0x0 (0x0003B248-0x0003B250, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$1A
	dc.b	$00, $47, $00, $B4 ;0x0 (0x0003B254-0x0003B258, Entry count: 0x00000004) [Unknown data]
	dc.b	$6E
	dc.b	$CC
	dc.b	$13, $EC, $00, $3D, $01, $DD, $20, $00 ;0x0 (0x0003B25A-0x0003B262, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92DB0
	dc.b	$08
	dc.b	$0C

Enemy_Stix:
	dc.l	ArtComp_Stix
	dc.b	$00, $61, $00, $28
	dc.w	EnemyName_Stix-EnemyNameData
	dc.b	$00, $5F ;0x0 (0x0003B26C-0x0003B274, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $21, $00, $21 ;0x0 (0x0003B278-0x0003B27C, Entry count: 0x00000004) [Unknown data]
	dc.b	$41
	dc.b	$99
	dc.b	$00, $99, $00, $03, $00, $D5, $00, $00 ;0x0 (0x0003B27E-0x0003B286, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93170
	dc.b	$08
	dc.b	$0C

Enemy_Glazstix:
	dc.l	ArtComp_Stix
	dc.b	$00, $62, $00, $28
	dc.w	EnemyName_Glazstix-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003B290-0x0003B298, Entry count: 0x00000008) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$02 ;0x0 (0x0003B29A-0x0003B29B, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $2D, $00, $2C ;0x0 (0x0003B29C-0x0003B2A0, Entry count: 0x00000004) [Unknown data]
	dc.b	$4B
	dc.b	$99
	dc.b	$01, $9B, $00, $0F, $01, $27, $00, $00 ;0x0 (0x0003B2A2-0x0003B2AA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93170
	dc.b	$08
	dc.b	$0C

Enemy_Metlstix:
	dc.l	ArtComp_Stix
	dc.b	$00, $63, $00, $28
	dc.w	EnemyName_Metlstix-EnemyNameData
	dc.b	$00, $B7 ;0x0 (0x0003B2B4-0x0003B2BC, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $2F, $00, $78 ;0x0 (0x0003B2C0-0x0003B2C4, Entry count: 0x00000004) [Unknown data]
	dc.b	$50
	dc.b	$99
	dc.b	$05, $17, $00, $3D, $01, $72, $00, $00 ;0x0 (0x0003B2C6-0x0003B2CE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93170
	dc.b	$08
	dc.b	$0C

Enemy_Twistbot:
	dc.l	ArtComp_Twistbot
	dc.b	$00, $64, $00, $06
	dc.w	EnemyName_Twistbot-EnemyNameData
	dc.b	$01, $46 ;0x0 (0x0003B2D4-0x0003B2E0, Entry count: 0x0000000C) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$04, $99, $00, $0F, $00, $37, $53, $CC, $0F, $3C, $02, $C7, $01, $B4, $2C, $02
	dc.l	loc_941E0
	dc.b	$08, $0C

Enemy_Swivlbot:
	dc.l	ArtComp_Twistbot
	dc.b	$00, $65, $00, $06
	dc.w	EnemyName_Swivlbot-EnemyNameData
	dc.b	$01, $52 ;0x20
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$05, $99, $00, $10, $00, $3E, $53, $CC, $0F, $A0, $03, $2D, $01, $C2, $2C, $02
	dc.l	loc_941E0
	dc.b	$08, $0C

Enemy_Rotabot:
	dc.l	ArtComp_Twistbot
	dc.b	$00, $66, $00, $06
	dc.w	EnemyName_Rotabot-EnemyNameData
	dc.b	$01, $6E ;0x20
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$06, $99, $00, $11, $00, $3F, $5F, $CC, $18, $38, $04, $B0, $01, $E6, $2C, $02
	dc.l	loc_941E0
	dc.b	$08, $0C ;0x0 (0x0003B32A-0x0003B340, Entry count: 0x00000016) [Unknown data]

Enemy_Dragon:
	dc.l	ArtComp_Dragon
	dc.b	$00, $67, $00, $22
	dc.w	EnemyName_Dragon-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003B344-0x0003B34C, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$4D
	dc.b	$00, $32, $00, $49 ;0x0 (0x0003B350-0x0003B354, Entry count: 0x00000004) [Unknown data]
	dc.b	$41
	dc.b	$4D
	dc.b	$05, $DC, $01, $96, $01, $91, $08, $0F ;0x0 (0x0003B356-0x0003B35E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94294
	dc.b	$0C
	dc.b	$0C

Enemy_Drake:
	dc.l	ArtComp_Dragon
	dc.b	$00, $68, $00, $22
	dc.w	EnemyName_Drake-EnemyNameData
	dc.b	$00, $C8 ;0x0 (0x0003B368-0x0003B370, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$05
	dc.b	$4D
	dc.b	$00, $32, $00, $78 ;0x0 (0x0003B374-0x0003B378, Entry count: 0x00000004) [Unknown data]
	dc.b	$5A
	dc.b	$4D
	dc.b	$0C, $20, $04, $60, $01, $BD, $08, $0F ;0x0 (0x0003B37A-0x0003B382, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94294
	dc.b	$0C
	dc.b	$0C

Enemy_Wyrm:
	dc.l	ArtComp_Dragon
	dc.b	$00, $69, $00, $22
	dc.w	EnemyName_Wyrm-EnemyNameData
	dc.b	$01, $0E ;0x0 (0x0003B38C-0x0003B394, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$4D
	dc.b	$00, $3C, $00, $78 ;0x0 (0x0003B398-0x0003B39C, Entry count: 0x00000004) [Unknown data]
	dc.b	$78
	dc.b	$4D
	dc.b	$1F, $C2, $05, $78, $02, $64, $08, $0F ;0x0 (0x0003B39E-0x0003B3A6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94294
	dc.b	$0C
	dc.b	$0C

Enemy_Skeleton:
	dc.l	ArtComp_Skeleton
	dc.b	$00, $6A, $00, $06
	dc.w	EnemyName_Skeleton-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003B3AC-0x0003B3B8, Entry count: 0x0000000C) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$03, $80, $00, $23, $00, $3C, $46, $1A, $01, $E8, $00, $01, $01, $17, $0C, $05
	dc.l	loc_94504
	dc.b	$08, $10

Enemy_Spectre:
	dc.l	ArtComp_Skeleton
	dc.b	$00, $6B, $00, $06
	dc.w	EnemyName_Spectre-EnemyNameData
	dc.b	$00, $5A ;0x20
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$04, $80, $00, $29, $00, $58, $53, $1A, $07, $0B, $00, $01, $01, $79, $0C, $05
	dc.l	loc_94504
	dc.b	$08, $10 ;0x0 (0x0003B3DE-0x0003B3F4, Entry count: 0x00000016) [Unknown data]

Enemy_Wraith:
	dc.l	ArtComp_Skeleton
	dc.b	$00, $6C, $00, $06
	dc.w	EnemyName_Wraith-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003B3F8-0x0003B400, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$05
	dc.b	$80
	dc.b	$00, $3C, $00, $82 ;0x0 (0x0003B404-0x0003B408, Entry count: 0x00000004) [Unknown data]
	dc.b	$6E
	dc.b	$1A
	dc.b	$0C, $3A, $00, $01, $01, $F6, $0C, $05 ;0x0 (0x0003B40A-0x0003B412, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94504
	dc.b	$08
	dc.b	$10

Enemy_Grinder:
	dc.l	ArtComp_Grinder
	dc.b	$00, $6D, $00, $06
	dc.w	EnemyName_Grinder-EnemyNameData
	dc.b	$00, $42 ;0x0 (0x0003B41C-0x0003B424, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $0A, $00, $67 ;0x0 (0x0003B428-0x0003B42C, Entry count: 0x00000004) [Unknown data]
	dc.b	$12
	dc.b	$CC
	dc.b	$00, $0F, $00, $01, $00, $42, $00, $05 ;0x0 (0x0003B42E-0x0003B436, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92E48
	dc.b	$0C
	dc.b	$10

Enemy_Smasher:
	dc.l	ArtComp_Grinder
	dc.b	$00, $6E, $00, $06
	dc.w	EnemyName_Smasher-EnemyNameData
	dc.b	$00, $67 ;0x0 (0x0003B440-0x0003B448, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $16, $00, $69 ;0x0 (0x0003B44C-0x0003B450, Entry count: 0x00000004) [Unknown data]
	dc.b	$32
	dc.b	$CC
	dc.b	$00, $67, $00, $21, $00, $D0, $00, $05 ;0x0 (0x0003B452-0x0003B45A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92E48
	dc.b	$0C
	dc.b	$10

Enemy_Crusher:
	dc.l	ArtComp_Grinder
	dc.b	$00, $6F, $00, $06
	dc.w	EnemyName_Crusher-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003B460-0x0003B46C, Entry count: 0x0000000C) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$01, $1A, $00, $1D, $00, $96, $4D, $CC, $05, $22, $00, $E9, $01, $69, $00, $05
	dc.l	loc_92E48
	dc.b	$0C, $10 ;0x0 (0x0003B46E-0x0003B484, Entry count: 0x00000016) [Unknown data]

Enemy_Clops:
	dc.l	ArtComp_Clops
	dc.b	$00, $70, $00, $06
	dc.w	EnemyName_Clops-EnemyNameData
	dc.b	$00, $87 ;0x0 (0x0003B488-0x0003B490, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $1F, $00, $19 ;0x0 (0x0003B494-0x0003B498, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$CC
	dc.b	$00, $1B, $00, $28, $00, $B4, $24, $00 ;0x0 (0x0003B49A-0x0003B4A2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_940C0
	dc.b	$0C
	dc.b	$10

Enemy_Biclops:
	dc.l	ArtComp_Clops
	dc.b	$00, $71, $00, $06
	dc.w	EnemyName_Biclops-EnemyNameData
	dc.b	$00, $3A ;0x0 (0x0003B4AC-0x0003B4B4, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $1E, $00, $2D ;0x0 (0x0003B4B8-0x0003B4BC, Entry count: 0x00000004) [Unknown data]
	dc.b	$46
	dc.b	$CC
	dc.b	$00, $50, $01, $2C, $00, $BE, $24, $00 ;0x0 (0x0003B4BE-0x0003B4C6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_940C0
	dc.b	$0C
	dc.b	$10

Enemy_Triclops:
	dc.l	ArtComp_Clops
	dc.b	$00, $72, $00, $06
	dc.w	EnemyName_Triclops-EnemyNameData
	dc.b	$00, $8D ;0x0 (0x0003B4D0-0x0003B4D8, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $27, $00, $53 ;0x0 (0x0003B4DC-0x0003B4E0, Entry count: 0x00000004) [Unknown data]
	dc.b	$5A
	dc.b	$CC
	dc.b	$05, $EF, $01, $2C, $01, $78, $24, $00 ;0x0 (0x0003B4E2-0x0003B4EA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_940C0
	dc.b	$0C
	dc.b	$10

Enemy_Dogbot:
	dc.l	ArtComp_Dogbot
	dc.b	$00, $73, $00, $06
	dc.w	EnemyName_Dogbot-EnemyNameData
	dc.b	$00, $41 ;0x0 (0x0003B4F4-0x0003B4FC, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $1E, $00, $2D ;0x0 (0x0003B500-0x0003B504, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$66
	dc.b	$00, $86, $00, $3D, $00, $E6, $00, $00 ;0x0 (0x0003B506-0x0003B50E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92BB8
	dc.b	$0C
	dc.b	$10

Enemy_Feralbot:
	dc.l	ArtComp_Dogbot
	dc.b	$00, $74, $00, $06
	dc.w	EnemyName_Feralbot-EnemyNameData
	dc.b	$00, $6E ;0x0 (0x0003B518-0x0003B520, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $26, $00, $37 ;0x0 (0x0003B524-0x0003B528, Entry count: 0x00000004) [Unknown data]
	dc.b	$43
	dc.b	$66
	dc.b	$01, $A5, $00, $7A, $01, $0F, $00, $00 ;0x0 (0x0003B52A-0x0003B532, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92BB8
	dc.b	$0C
	dc.b	$10

Enemy_Wolfbot:
	dc.l	ArtComp_Dogbot
	dc.b	$00, $75, $00, $06
	dc.w	EnemyName_Wolfbot-EnemyNameData
	dc.b	$00, $A0 ;0x0 (0x0003B53C-0x0003B544, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$4D
	dc.b	$00, $2C, $00, $78 ;0x0 (0x0003B548-0x0003B54C, Entry count: 0x00000004) [Unknown data]
	dc.b	$59
	dc.b	$66
	dc.b	$04, $B0, $01, $54, $01, $84, $00, $00 ;0x0 (0x0003B54E-0x0003B556, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92BB8
	dc.b	$0C
	dc.b	$10

Enemy_Amazon:
	dc.l	ArtComp_Amazon
	dc.b	$00, $76, $00, $06
	dc.w	EnemyName_Amazon-EnemyNameData
	dc.b	$01, $4A ;0x0 (0x0003B560-0x0003B568, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $2A, $00, $16 ;0x0 (0x0003B56C-0x0003B570, Entry count: 0x00000004) [Unknown data]
	dc.b	$46
	dc.b	$66
	dc.b	$07, $19, $00, $D6, $01, $9D, $00, $00 ;0x0 (0x0003B572-0x0003B57A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93940
	dc.b	$0C
	dc.b	$10

Enemy_Erinye:
	dc.l	ArtComp_Amazon
	dc.b	$00, $77, $00, $06
	dc.w	EnemyName_Erinye-EnemyNameData
	dc.b	$00, $D0 ;0x0 (0x0003B584-0x0003B58C, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$02 ;0x0 (0x0003B58E-0x0003B58F, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $2F, $00, $50 ;0x0 (0x0003B590-0x0003B594, Entry count: 0x00000004) [Unknown data]
	dc.b	$53
	dc.b	$66
	dc.b	$0B, $DB, $02, $08, $01, $CA, $00, $00 ;0x0 (0x0003B596-0x0003B59E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93940
	dc.b	$0C
	dc.b	$10

Enemy_Valkyrie:
	dc.l	ArtComp_Amazon
	dc.b	$00, $78, $00, $06
	dc.w	EnemyName_Valkyrie-EnemyNameData
	dc.b	$00, $D3 ;0x0 (0x0003B5A8-0x0003B5B0, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$02 ;0x0 (0x0003B5B2-0x0003B5B3, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $33, $00, $6F ;0x0 (0x0003B5B4-0x0003B5B8, Entry count: 0x00000004) [Unknown data]
	dc.b	$64
	dc.b	$66
	dc.b	$0F, $48, $02, $BC, $01, $F3, $00, $00 ;0x0 (0x0003B5BA-0x0003B5C2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93940
	dc.b	$0C
	dc.b	$10

Enemy_Giant:
	dc.l	ArtComp_Giant
	dc.b	$00, $79, $00, $06
	dc.w	EnemyName_Giant-EnemyNameData
	dc.b	$00, $37 ;0x0 (0x0003B5CC-0x0003B5D4, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$01
	dc.b	$33
	dc.b	$00, $14, $00, $28 ;0x0 (0x0003B5D8-0x0003B5DC, Entry count: 0x00000004) [Unknown data]
	dc.b	$1C
	dc.b	$CC
	dc.b	$00, $0C, $00, $10, $00, $67, $00, $05 ;0x0 (0x0003B5DE-0x0003B5E6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93B04
	dc.b	$0C
	dc.b	$10

Enemy_Titan:
	dc.l	ArtComp_Giant
	dc.b	$00, $7A, $00, $06
	dc.w	EnemyName_Titan-EnemyNameData
	dc.b	$00, $82 ;0x0 (0x0003B5F0-0x0003B5F8, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$02
	dc.b	$33
	dc.b	$00, $1E, $00, $28 ;0x0 (0x0003B5FC-0x0003B600, Entry count: 0x00000004) [Unknown data]
	dc.b	$46
	dc.b	$CC
	dc.b	$00, $F1, $00, $3E, $00, $F1, $00, $05 ;0x0 (0x0003B602-0x0003B60A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93B04
	dc.b	$0C
	dc.b	$10

Enemy_Colossus:
	dc.l	ArtComp_Giant
	dc.b	$00, $7B, $00, $06
	dc.w	EnemyName_Colossus-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003B610-0x0003B61C, Entry count: 0x0000000C) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$05, $33, $00, $33, $00, $6C, $6F, $CC, $0C, $D0, $03, $FC, $01, $E8, $00, $05
	dc.l	loc_93B04
	dc.b	$0C, $10 ;0x0 (0x0003B61E-0x0003B634, Entry count: 0x00000016) [Unknown data]

Enemy_Primus:
	dc.l	ArtComp_Primus
	dc.b	$00, $7C, $00, $06
	dc.w	EnemyName_Primus-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003B638-0x0003B640, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$03
	dc.b	$80
	dc.b	$00, $0F, $00, $22 ;0x0 (0x0003B644-0x0003B648, Entry count: 0x00000004) [Unknown data]
	dc.b	$37
	dc.b	$1A
	dc.b	$00, $F0, $00, $01, $00, $E6, $2C, $00 ;0x0 (0x0003B64A-0x0003B652, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_933F4
	dc.b	$0C
	dc.b	$10

Enemy_Secundus:
	dc.l	ArtComp_Primus
	dc.b	$00, $7D, $00, $06
	dc.w	EnemyName_Secundus-EnemyNameData
	dc.b	$00, $A0 ;0x0 (0x0003B65C-0x0003B664, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$04
	dc.b	$80
	dc.b	$00, $11, $00, $33 ;0x0 (0x0003B668-0x0003B66C, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$1A
	dc.b	$03, $32, $00, $01, $01, $55, $2C, $00 ;0x0 (0x0003B66E-0x0003B676, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_933F4
	dc.b	$0C
	dc.b	$10

Enemy_Tertius:
	dc.l	ArtComp_Primus
	dc.b	$00, $7E, $00, $06
	dc.w	EnemyName_Tertius-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003B680-0x0003B688, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$05
	dc.b	$80
	dc.b	$00, $27, $00, $50 ;0x0 (0x0003B68C-0x0003B690, Entry count: 0x00000004) [Unknown data]
	dc.b	$5A
	dc.b	$1A
	dc.b	$07, $15, $00, $01, $01, $A4, $2C, $00 ;0x0 (0x0003B692-0x0003B69A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_933F4
	dc.b	$0C
	dc.b	$10

Enemy_Lasher:
	dc.l	ArtComp_Lasher
	dc.b	$00, $7F, $00, $06
	dc.w	EnemyName_Lasher-EnemyNameData
	dc.b	$00, $96 ;0x0 (0x0003B6A4-0x0003B6AC, Entry count: 0x00000008) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$01 ;0x0 (0x0003B6AE-0x0003B6AF, Entry count: 0x00000001) [Unknown data]
	dc.b	$1A
	dc.b	$00, $1F, $00, $18 ;0x0 (0x0003B6B0-0x0003B6B4, Entry count: 0x00000004) [Unknown data]
	dc.b	$33
	dc.b	$B3
	dc.b	$00, $1E, $00, $2D, $00, $AD, $00, $00 ;0x0 (0x0003B6B6-0x0003B6BE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94650
	dc.b	$0C
	dc.b	$10

Enemy_Slasher:
	dc.l	ArtComp_Lasher
	dc.b	$00, $80, $00, $06
	dc.w	EnemyName_Slasher-EnemyNameData
	dc.b	$00, $46 ;0x0 (0x0003B6C8-0x0003B6D0, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $3D, $00, $3E ;0x0 (0x0003B6D4-0x0003B6D8, Entry count: 0x00000004) [Unknown data]
	dc.b	$4B
	dc.b	$B3
	dc.b	$00, $DA, $00, $50, $00, $E9, $00, $00 ;0x0 (0x0003B6DA-0x0003B6E2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94650
	dc.b	$0C
	dc.b	$10

Enemy_Gnasher:
	dc.l	ArtComp_Lasher
	dc.b	$00, $81, $00, $06
	dc.w	EnemyName_Gnasher-EnemyNameData
	dc.b	$00, $3C ;0x0 (0x0003B6EC-0x0003B6F4, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$1A
	dc.b	$01, $F4, $00, $52 ;0x0 (0x0003B6F8-0x0003B6FC, Entry count: 0x00000004) [Unknown data]
	dc.b	$4B
	dc.b	$B3
	dc.b	$05, $E4, $01, $0E, $01, $81, $00, $00 ;0x0 (0x0003B6FE-0x0003B706, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94650
	dc.b	$0C
	dc.b	$10

Enemy_Doomfly:
	dc.l	ArtComp_Doomfly
	dc.b	$00, $82, $00, $0E
	dc.w	EnemyName_Doomfly-EnemyNameData
	dc.b	$00, $4B ;0x0 (0x0003B710-0x0003B718, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $2D, $00, $48 ;0x0 (0x0003B71C-0x0003B720, Entry count: 0x00000004) [Unknown data]
	dc.b	$3E
	dc.b	$99
	dc.b	$01, $1B, $00, $58, $00, $E7, $04, $00 ;0x0 (0x0003B722-0x0003B72A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92F70
	dc.b	$0C
	dc.b	$10

Enemy_Demonfly:
	dc.l	ArtComp_Doomfly
	dc.b	$00, $83, $00, $0E
	dc.w	EnemyName_Demonfly-EnemyNameData
	dc.b	$00, $55 ;0x0 (0x0003B734-0x0003B73C, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C	;Predicted (Code target predicted at 0x10D80)
	dc.b	$01, $1A, $00, $37, $00, $49 ;0x0 (0x0003B73E-0x0003B744, Entry count: 0x00000006) [Unknown data]
	dc.b	$41
	dc.b	$99
	dc.b	$01, $EB, $00, $7F, $01, $21, $04, $00 ;0x0 (0x0003B746-0x0003B74E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92F70
	dc.b	$0C
	dc.b	$10

Enemy_Deathfly:
	dc.l	ArtComp_Doomfly
	dc.b	$00, $84, $00, $0E
	dc.w	EnemyName_Deathfly-EnemyNameData
	dc.b	$00, $C8 ;0x0 (0x0003B758-0x0003B760, Entry count: 0x00000008) [Unknown data]
	dc.w	$5C
	dc.b	$01
	dc.b	$1A
	dc.b	$00, $30, $00, $86 ;0x0 (0x0003B764-0x0003B768, Entry count: 0x00000004) [Unknown data]
	dc.b	$50
	dc.b	$99
	dc.b	$05, $14, $01, $41, $01, $72, $04, $00 ;0x0 (0x0003B76A-0x0003B772, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92F70
	dc.b	$0C
	dc.b	$10

Enemy_Blotter:
	dc.l	ArtComp_Blotter
	dc.b	$00, $85, $00, $06
	dc.w	EnemyName_Blotter-EnemyNameData
	dc.b	$00, $85 ;0x0 (0x0003B77C-0x0003B784, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$03
	dc.b	$99
	dc.b	$00, $1E, $00, $18 ;0x0 (0x0003B788-0x0003B78C, Entry count: 0x00000004) [Unknown data]
	dc.b	$21
	dc.b	$CC
	dc.b	$00, $28, $00, $09, $00, $B5, $28, $04 ;0x0 (0x0003B78E-0x0003B796, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93A28
	dc.b	$0C
	dc.b	$10

Enemy_Flutter:
	dc.l	ArtComp_Blotter
	dc.b	$00, $86, $00, $06
	dc.w	EnemyName_Flutter-EnemyNameData
	dc.b	$00, $CD ;0x0 (0x0003B7A0-0x0003B7A8, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$04
	dc.b	$99
	dc.b	$00, $0A, $00, $1C ;0x0 (0x0003B7AC-0x0003B7B0, Entry count: 0x00000004) [Unknown data]
	dc.b	$40
	dc.b	$CC
	dc.b	$01, $37, $00, $20, $01, $0C, $28, $04 ;0x0 (0x0003B7B2-0x0003B7BA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93A28
	dc.b	$0C
	dc.b	$10

Enemy_Splatter:
	dc.l	ArtComp_Blotter
	dc.b	$00, $87, $00, $06
	dc.w	EnemyName_Splatter-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003B7C4-0x0003B7CC, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$05
	dc.b	$99
	dc.b	$00, $29, $00, $5D ;0x0 (0x0003B7D0-0x0003B7D4, Entry count: 0x00000004) [Unknown data]
	dc.b	$5F
	dc.b	$CC
	dc.b	$09, $C4, $01, $1E, $01, $A7, $28, $04 ;0x0 (0x0003B7D6-0x0003B7DE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93A28
	dc.b	$0C
	dc.b	$10

Enemy_Polebot:
	dc.l	ArtComp_Polebot
	dc.b	$00, $88, $00, $06
	dc.w	EnemyName_Polebot-EnemyNameData
	dc.b	$00, $CE ;0x0 (0x0003B7E8-0x0003B7F0, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$03
	dc.b	$80
	dc.b	$00, $2E, $00, $02 ;0x0 (0x0003B7F4-0x0003B7F8, Entry count: 0x00000004) [Unknown data]
	dc.b	$44
	dc.b	$E6
	dc.b	$00, $59, $00, $88, $00, $ED, $08, $03 ;0x0 (0x0003B7FA-0x0003B802, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94BA4
	dc.b	$0C
	dc.b	$10

Enemy_Stickbot:
	dc.l	ArtComp_Polebot
	dc.b	$00, $89, $00, $06
	dc.w	EnemyName_Stickbot-EnemyNameData
	dc.b	$00, $A0 ;0x0 (0x0003B80C-0x0003B814, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$04
	dc.b	$80
	dc.b	$00, $2B, $00, $3E ;0x0 (0x0003B818-0x0003B81C, Entry count: 0x00000004) [Unknown data]
	dc.b	$4E
	dc.b	$E6
	dc.b	$06, $A4, $02, $30, $01, $8F, $08, $03 ;0x0 (0x0003B81E-0x0003B826, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94BA4
	dc.b	$0C
	dc.b	$10

Enemy_Wirebot:
	dc.l	ArtComp_Polebot
	dc.b	$00, $8A, $00, $06
	dc.w	EnemyName_Wirebot-EnemyNameData
	dc.b	$00, $A8 ;0x0 (0x0003B82C-0x0003B838, Entry count: 0x0000000C) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$08, $4D, $00, $31, $00, $3F, $4A, $E6, $08, $FC, $02, $EB, $01, $B0, $08, $03
	dc.l	loc_94BA4
	dc.b	$0C, $10 ;0x0 (0x0003B83A-0x0003B850, Entry count: 0x00000016) [Unknown data]

Enemy_Agribot:
	dc.l	ArtComp_Agribot
	dc.b	$00, $8B, $00, $06
	dc.w	EnemyName_Agribot-EnemyNameData
	dc.b	$00, $36 ;0x0 (0x0003B854-0x0003B85C, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$01
	dc.b	$66
	dc.b	$00, $1E, $00, $3F ;0x0 (0x0003B860-0x0003B864, Entry count: 0x00000004) [Unknown data]
	dc.b	$3A
	dc.b	$CC
	dc.b	$00, $50, $00, $57, $00, $E6, $00, $04 ;0x0 (0x0003B866-0x0003B86E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_948A0
	dc.b	$0C
	dc.b	$10

Enemy_Guardbot:
	dc.l	ArtComp_Agribot
	dc.b	$00, $8C, $00, $06
	dc.w	EnemyName_Guardbot-EnemyNameData
	dc.b	$00, $44 ;0x0 (0x0003B874-0x0003B880, Entry count: 0x0000000C) [Unknown data]
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$01, $66, $00, $27, $00, $49, $46, $CC, $01, $4A, $01, $98, $01, $54, $00, $04
	dc.l	loc_948A0
	dc.b	$0C, $10

Enemy_Warbot:
	dc.l	ArtComp_Agribot
	dc.b	$00, $8D, $00, $06
	dc.w	EnemyName_Warbot-EnemyNameData
	dc.b	$00, $B4 ;0x20
	dc.w	$50	;Predicted (Code target predicted at 0x10D74)
	dc.b	$01, $66, $00, $32, $00, $97, $5A, $CC, $04, $B0, $01, $54, $01, $8D, $00, $04
	dc.l	loc_948A0
	dc.b	$0C, $10 ;0x0 (0x0003B8A6-0x0003B8BC, Entry count: 0x00000016) [Unknown data]

Enemy_Flopper:
	dc.l	ArtComp_Flopper
	dc.b	$00, $8E, $00, $10
	dc.w	EnemyName_Flopper-EnemyNameData
	dc.b	$00, $78 ;0x0 (0x0003B8C0-0x0003B8C8, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$05 ;0x0 (0x0003B8CA-0x0003B8CB, Entry count: 0x00000001) [Unknown data]
	dc.b	$4D
	dc.b	$00, $2E, $00, $26 ;0x0 (0x0003B8CC-0x0003B8D0, Entry count: 0x00000004) [Unknown data]
	dc.b	$37
	dc.b	$CC
	dc.b	$00, $F1, $00, $E6, $01, $2C, $2C, $03 ;0x0 (0x0003B8D2-0x0003B8DA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93D4C
	dc.b	$0C
	dc.b	$10

Enemy_Disker:
	dc.l	ArtComp_Flopper
	dc.b	$00, $8F, $00, $10
	dc.w	EnemyName_Disker-EnemyNameData
	dc.b	$00, $A0 ;0x0 (0x0003B8E0-0x0003B8EC, Entry count: 0x0000000C) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$06, $4D, $00, $2E, $00, $27, $41, $CC, $00, $F2, $01, $27, $01, $38, $2C, $03
	dc.l	loc_93D4C
	dc.b	$0C, $10 ;0x0 (0x0003B8EE-0x0003B904, Entry count: 0x00000016) [Unknown data]

Enemy_Carder:
	dc.l	ArtComp_Flopper
	dc.b	$00, $90, $00, $10
	dc.w	EnemyName_Carder-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003B908-0x0003B910, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$07 ;0x0 (0x0003B912-0x0003B913, Entry count: 0x00000001) [Unknown data]
	dc.b	$4D
	dc.b	$00, $32, $00, $82 ;0x0 (0x0003B914-0x0003B918, Entry count: 0x00000004) [Unknown data]
	dc.b	$78
	dc.b	$CC
	dc.b	$07, $08, $04, $B5, $01, $B8, $2C, $0F ;0x0 (0x0003B91A-0x0003B922, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93D4C
	dc.b	$0C
	dc.b	$10

Enemy_Fatale:
	dc.l	ArtComp_Fatale
	dc.b	$00, $91, $00, $06
	dc.w	EnemyName_Fatale-EnemyNameData
	dc.b	$00, $73 ;0x0 (0x0003B92C-0x0003B934, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$33
	dc.b	$00, $32, $00, $3E ;0x0 (0x0003B938-0x0003B93C, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$80
	dc.b	$03, $31, $00, $F4, $01, $55, $00, $00 ;0x0 (0x0003B93E-0x0003B946, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92D0C
	dc.b	$08
	dc.b	$10

Enemy_Morte:
	dc.l	ArtComp_Fatale
	dc.b	$00, $92, $00, $06
	dc.w	EnemyName_Morte-EnemyNameData
	dc.b	$00, $8F ;0x0 (0x0003B950-0x0003B958, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$33
	dc.b	$00, $36, $00, $48 ;0x0 (0x0003B95C-0x0003B960, Entry count: 0x00000004) [Unknown data]
	dc.b	$4B
	dc.b	$80
	dc.b	$09, $D1, $01, $A4, $01, $87, $00, $00 ;0x0 (0x0003B962-0x0003B96A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92D0C
	dc.b	$08
	dc.b	$10

Enemy_Finis:
	dc.l	ArtComp_Fatale
	dc.b	$00, $93, $00, $06
	dc.w	EnemyName_Finis-EnemyNameData
	dc.b	$00, $B2 ;0x0 (0x0003B970-0x0003B97C, Entry count: 0x0000000C) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$02, $33, $00, $46, $00, $8C, $5A, $80, $0E, $D8, $04, $B0, $01, $E2, $00, $00
	dc.l	loc_92D0C
	dc.b	$08, $10 ;0x0 (0x0003B97E-0x0003B994, Entry count: 0x00000016) [Unknown data]

Enemy_Stickle:
	dc.l	ArtComp_Stickle
	dc.b	$00, $94, $00, $06
	dc.w	EnemyName_Stickle-EnemyNameData
	dc.b	$00, $D5 ;0x0 (0x0003B998-0x0003B9A0, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$02
	dc.b	$1A
	dc.b	$00, $28, $00, $50 ;0x0 (0x0003B9A4-0x0003B9A8, Entry count: 0x00000004) [Unknown data]
	dc.b	$5F
	dc.b	$CC
	dc.b	$07, $DC, $02, $BC, $01, $95, $2C, $02 ;0x0 (0x0003B9AA-0x0003B9B2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94A54
	dc.b	$08
	dc.b	$10

Enemy_Twig:
	dc.l	ArtComp_Stickle
	dc.b	$00, $95, $00, $06
	dc.w	EnemyName_Twig-EnemyNameData
	dc.b	$00, $E0 ;0x0 (0x0003B9BC-0x0003B9C4, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$03
	dc.b	$1A
	dc.b	$00, $2D, $00, $5A ;0x0 (0x0003B9C8-0x0003B9CC, Entry count: 0x00000004) [Unknown data]
	dc.b	$61
	dc.b	$CC
	dc.b	$0A, $F6, $03, $20, $01, $9F, $2C, $02 ;0x0 (0x0003B9CE-0x0003B9D6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94A54
	dc.b	$08
	dc.b	$10

Enemy_Mantis:
	dc.l	ArtComp_Stickle
	dc.b	$00, $96, $00, $06
	dc.w	EnemyName_Mantis-EnemyNameData
	dc.b	$00, $EE ;0x0 (0x0003B9E0-0x0003B9E8, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$04
	dc.b	$1A
	dc.b	$00, $32, $00, $71 ;0x0 (0x0003B9EC-0x0003B9F0, Entry count: 0x00000004) [Unknown data]
	dc.b	$62
	dc.b	$CC
	dc.b	$0F, $52, $03, $6C, $01, $B6, $2C, $02 ;0x0 (0x0003B9F2-0x0003B9FA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94A54
	dc.b	$08
	dc.b	$10

Enemy_Orb:
	dc.l	ArtComp_Orb
	dc.b	$00, $97, $00, $30
	dc.w	EnemyName_Orb-EnemyNameData
	dc.b	$00, $D7 ;0x0 (0x0003BA04-0x0003BA0C, Entry count: 0x00000008) [Unknown data]
	dc.w	$48	;Predicted (Code target predicted at 0x10D6C)
	dc.b	$05 ;0x0 (0x0003BA0E-0x0003BA0F, Entry count: 0x00000001) [Unknown data]
	dc.b	$33
	dc.b	$00, $1F, $00, $78 ;0x0 (0x0003BA10-0x0003BA14, Entry count: 0x00000004) [Unknown data]
	dc.b	$5F
	dc.b	$CC
	dc.b	$06, $40, $03, $7D, $01, $C7, $0C, $0F ;0x0 (0x0003BA16-0x0003BA1E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93BF8
	dc.b	$0C
	dc.b	$10

Enemy_Globe:
	dc.l	ArtComp_Orb
	dc.b	$00, $98, $00, $30
	dc.w	EnemyName_Globe-EnemyNameData
	dc.b	$00, $E2 ;0x0 (0x0003BA28-0x0003BA30, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$33
	dc.b	$00, $21, $00, $85 ;0x0 (0x0003BA34-0x0003BA38, Entry count: 0x00000004) [Unknown data]
	dc.b	$5F
	dc.b	$CC
	dc.b	$08, $98, $04, $04, $01, $D4, $0C, $0F ;0x0 (0x0003BA3A-0x0003BA42, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93BF8
	dc.b	$0C
	dc.b	$10

Enemy_Sphere:
	dc.l	ArtComp_Orb
	dc.b	$00, $99, $00, $30
	dc.w	EnemyName_Sphere-EnemyNameData
	dc.b	$00, $ED ;0x0 (0x0003BA4C-0x0003BA54, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$07
	dc.b	$33
	dc.b	$00, $28, $00, $8F ;0x0 (0x0003BA58-0x0003BA5C, Entry count: 0x00000004) [Unknown data]
	dc.b	$64
	dc.b	$CC
	dc.b	$0B, $B8, $05, $FD, $01, $E8, $0C, $0F ;0x0 (0x0003BA5E-0x0003BA66, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_93BF8
	dc.b	$0C
	dc.b	$10

Enemy_Dire:
	dc.l	ArtComp_Dire
	dc.b	$00, $9A, $00, $06
	dc.w	EnemyName_Dire-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003BA70-0x0003BA78, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$05, $80, $00, $18, $00, $35 ;0x0 (0x0003BA7A-0x0003BA80, Entry count: 0x00000006) [Unknown data]
	dc.b	$78
	dc.b	$CC, $0F, $DC, $03, $C6, $01, $D9, $08, $02 ;0x0 (0x0003BA81-0x0003BA8A, Entry count: 0x00000009) [Unknown data]
	dc.l	loc_931C0
	dc.b	$08
	dc.b	$0C

Enemy_Baneful:
	dc.l	ArtComp_Dire
	dc.b	$00, $9B, $00, $06
	dc.w	EnemyName_Baneful-EnemyNameData
	dc.b	$00, $BC ;0x0 (0x0003BA94-0x0003BA9C, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$06
	dc.b	$80
	dc.b	$00, $18, $00, $40 ;0x0 (0x0003BAA0-0x0003BAA4, Entry count: 0x00000004) [Unknown data]
	dc.b	$78
	dc.b	$CC
	dc.b	$13, $90, $03, $E8, $01, $E4, $08, $02 ;0x0 (0x0003BAA6-0x0003BAAE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_931C0
	dc.b	$08
	dc.b	$0C

Enemy_Malific:
	dc.l	ArtComp_Dire
	dc.b	$00, $9C, $00, $06
	dc.w	EnemyName_Malific-EnemyNameData
	dc.b	$00, $BD ;0x0 (0x0003BAB8-0x0003BAC0, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$07
	dc.b	$80
	dc.b	$00, $18, $00, $48 ;0x0 (0x0003BAC4-0x0003BAC8, Entry count: 0x00000004) [Unknown data]
	dc.b	$78
	dc.b	$CC
	dc.b	$13, $F8, $04, $00, $01, $F6, $08, $02 ;0x0 (0x0003BACA-0x0003BAD2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_931C0
	dc.b	$08
	dc.b	$0C

Enemy_Goatman:
	dc.l	ArtComp_Goatman
	dc.b	$00, $9D, $00, $06
	dc.w	EnemyName_Goatman-EnemyNameData
	dc.b	$00, $D2, $00, $5C, $01 ;0x0 (0x0003BADC-0x0003BAE7, Entry count: 0x0000000B) [Unknown data]
	dc.b	$1A
	dc.b	$00, $5A, $00, $50 ;0x0 (0x0003BAE8-0x0003BAEC, Entry count: 0x00000004) [Unknown data]
	dc.b	$64
	dc.b	$CC
	dc.b	$18, $38, $02, $00, $01, $A0, $20, $00 ;0x0 (0x0003BAEE-0x0003BAF6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_934CC
	dc.b	$08
	dc.b	$0C

Enemy_Goatduke:
	dc.l	ArtComp_Goatman
	dc.b	$00, $9E, $00, $06
	dc.w	EnemyName_Goatduke-EnemyNameData
	dc.b	$00, $E6, $00, $5C, $01, $1A, $00, $5C, $00, $54 ;0x0 (0x0003BB00-0x0003BB10, Entry count: 0x00000010) [Unknown data]
	dc.b	$67
	dc.b	$CC
	dc.b	$18, $A4, $02, $79, $01, $A1, $20, $00 ;0x0 (0x0003BB12-0x0003BB1A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_934CC
	dc.b	$08
	dc.b	$0C

Enemy_Goatking:
	dc.l	ArtComp_Goatman
	dc.b	$00, $9F, $00, $06
	dc.w	EnemyName_Goatking-EnemyNameData
	dc.b	$00, $F0, $00, $5C, $01 ;0x0 (0x0003BB24-0x0003BB2F, Entry count: 0x0000000B) [Unknown data]
	dc.b	$1A
	dc.b	$00, $5E, $00, $55 ;0x0 (0x0003BB30-0x0003BB34, Entry count: 0x00000004) [Unknown data]
	dc.b	$69
	dc.b	$CC
	dc.b	$1F, $40, $02, $BD, $01, $B1, $20, $00 ;0x0 (0x0003BB36-0x0003BB3E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_934CC
	dc.b	$08
	dc.b	$0C

Enemy_Punisher:
	dc.l	ArtComp_Punisher
	dc.b	$00, $A0, $00, $06
	dc.w	EnemyName_Punisher-EnemyNameData
	dc.b	$01, $05 ;0x0 (0x0003BB48-0x0003BB50, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$07
	dc.b	$33
	dc.b	$00, $53, $00, $85 ;0x0 (0x0003BB54-0x0003BB58, Entry count: 0x00000004) [Unknown data]
	dc.b	$82
	dc.b	$4D
	dc.b	$23, $CE, $0C, $80, $02, $CE, $24, $0D ;0x0 (0x0003BB5A-0x0003BB62, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_9371C
	dc.b	$0C
	dc.b	$10

Enemy_Torturer:
	dc.l	ArtComp_Punisher
	dc.b	$00, $A1, $00, $06
	dc.w	EnemyName_Torturer-EnemyNameData
	dc.b	$01, $0E ;0x0 (0x0003BB6C-0x0003BB74, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$07
	dc.b	$33
	dc.b	$00, $55, $00, $87 ;0x0 (0x0003BB78-0x0003BB7C, Entry count: 0x00000004) [Unknown data]
	dc.b	$85
	dc.b	$4D
	dc.b	$23, $E3, $0D, $5B, $02, $FC, $24, $0D ;0x0 (0x0003BB7E-0x0003BB86, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_9371C
	dc.b	$0C
	dc.b	$10

Enemy_Executer:
	dc.l	ArtComp_Punisher
	dc.b	$00, $A2, $00, $06
	dc.w	EnemyName_Executer-EnemyNameData
	dc.b	$01, $0F ;0x0 (0x0003BB90-0x0003BB98, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$07
	dc.b	$33
	dc.b	$00, $58, $00, $8C ;0x0 (0x0003BB9C-0x0003BBA0, Entry count: 0x00000004) [Unknown data]
	dc.b	$87
	dc.b	$4D
	dc.b	$24, $72, $0D, $AC, $03, $05, $24, $0D ;0x0 (0x0003BBA2-0x0003BBAA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_9371C
	dc.b	$0C
	dc.b	$10

Enemy_Fatima:
	dc.l	ArtComp_Fatima
	dc.b	$00, $A3, $00, $06
	dc.w	EnemyName_Fatima-EnemyNameData
	dc.b	$00, $E6 ;0x0 (0x0003BBB4-0x0003BBBC, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$33
	dc.b	$00, $32, $00, $53 ;0x0 (0x0003BBC0-0x0003BBC4, Entry count: 0x00000004) [Unknown data]
	dc.b	$8C
	dc.b	$33
	dc.b	$1F, $2C, $00, $15, $02, $6D, $0C, $0D ;0x0 (0x0003BBC6-0x0003BBCE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92ABC
	dc.b	$0C
	dc.b	$10

Enemy_Zafirah:
	dc.l	ArtComp_Fatima
	dc.b	$00, $A4, $00, $06
	dc.w	EnemyName_Zafirah-EnemyNameData
	dc.b	$00, $E9 ;0x0 (0x0003BBD8-0x0003BBE0, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$33
	dc.b	$00, $35, $00, $5C ;0x0 (0x0003BBE4-0x0003BBE8, Entry count: 0x00000004) [Unknown data]
	dc.b	$90
	dc.b	$33
	dc.b	$1F, $B9, $00, $42, $02, $79, $0C, $0D ;0x0 (0x0003BBEA-0x0003BBF2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92ABC
	dc.b	$0C
	dc.b	$10

Enemy_Khalidah:
	dc.l	ArtComp_Fatima
	dc.b	$00, $A5, $00, $06
	dc.w	EnemyName_Khalidah-EnemyNameData
	dc.b	$00, $EB ;0x0 (0x0003BBFC-0x0003BC04, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$06
	dc.b	$33
	dc.b	$00, $9B, $00, $64 ;0x0 (0x0003BC08-0x0003BC0C, Entry count: 0x00000004) [Unknown data]
	dc.b	$94
	dc.b	$33
	dc.b	$20, $C3, $00, $21, $02, $84, $0C, $0D ;0x0 (0x0003BC0E-0x0003BC16, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_92ABC
	dc.b	$0C
	dc.b	$10

Enemy_Watcher:
	dc.l	ArtComp_Watcher
	dc.b	$00, $A6, $00, $06
	dc.w	EnemyName_Watcher-EnemyNameData
	dc.b	$01, $2C ;0x0 (0x0003BC20-0x0003BC28, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$0A
	dc.b	$4D
	dc.b	$00, $58, $00, $82 ;0x0 (0x0003BC2C-0x0003BC30, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$00
	dc.b	$24, $73, $00, $01, $03, $2B, $2C, $0D ;0x0 (0x0003BC32-0x0003BC3A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94450
	dc.b	$0C
	dc.b	$0C

Enemy_Defender:
	dc.l	ArtComp_Watcher
	dc.b	$00, $A7, $00, $06
	dc.w	EnemyName_Defender-EnemyNameData
	dc.b	$01, $4B ;0x0 (0x0003BC44-0x0003BC4C, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$10
	dc.b	$4D
	dc.b	$00, $59, $00, $83 ;0x0 (0x0003BC50-0x0003BC54, Entry count: 0x00000004) [Unknown data]
	dc.b	$41
	dc.b	$00
	dc.b	$25, $02, $00, $01, $03, $2E, $2C, $0D ;0x0 (0x0003BC56-0x0003BC5E, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94450
	dc.b	$0C
	dc.b	$0C

Enemy_Guardian:
	dc.l	ArtComp_Watcher
	dc.b	$00, $A8, $00, $06
	dc.w	EnemyName_Guardian-EnemyNameData
	dc.b	$01, $4F ;0x0 (0x0003BC68-0x0003BC70, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$12
	dc.b	$4D
	dc.b	$00, $5C, $00, $89 ;0x0 (0x0003BC74-0x0003BC78, Entry count: 0x00000004) [Unknown data]
	dc.b	$44
	dc.b	$00
	dc.b	$25, $DA, $00, $01, $03, $44, $2C, $0D ;0x0 (0x0003BC7A-0x0003BC82, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94450
	dc.b	$0C
	dc.b	$0C

Enemy_Conjurer:
	dc.l	ArtComp_Conjurer
	dc.b	$00, $A9, $00, $06
	dc.w	EnemyName_Conjurer-EnemyNameData
	dc.b	$00, $A0 ;0x0 (0x0003BC8C-0x0003BC94, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$0A
	dc.b	$33
	dc.b	$00, $3C, $00, $96 ;0x0 (0x0003BC98-0x0003BC9C, Entry count: 0x00000004) [Unknown data]
	dc.b	$6E
	dc.b	$4D
	dc.b	$21, $34, $00, $08, $02, $5B, $24, $0D ;0x0 (0x0003BC9E-0x0003BCA6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94354
	dc.b	$08
	dc.b	$10

Enemy_Wizard:
	dc.l	ArtComp_Conjurer
	dc.b	$00, $AA, $00, $06
	dc.w	EnemyName_Wizard-EnemyNameData
	dc.b	$00, $AA ;0x0 (0x0003BCB0-0x0003BCB8, Entry count: 0x00000008) [Unknown data]
	dc.w	$48
	dc.b	$0A
	dc.b	$33
	dc.b	$00, $46, $00, $97 ;0x0 (0x0003BCBC-0x0003BCC0, Entry count: 0x00000004) [Unknown data]
	dc.b	$74
	dc.b	$4D
	dc.b	$21, $85, $00, $0B, $02, $66, $24, $0D ;0x0 (0x0003BCC2-0x0003BCCA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94354
	dc.b	$08
	dc.b	$10

Enemy_Sorcerer:
	dc.l	ArtComp_Conjurer
	dc.b	$00, $AB, $00, $06
	dc.w	EnemyName_Sorcerer-EnemyNameData
	dc.b	$00, $B4 ;0x0 (0x0003BCD4-0x0003BCDC, Entry count: 0x00000008) [Unknown data]
	dc.w	$50
	dc.b	$0A
	dc.b	$33
	dc.b	$00, $46, $00, $99 ;0x0 (0x0003BCE0-0x0003BCE4, Entry count: 0x00000004) [Unknown data]
	dc.b	$75
	dc.b	$4D
	dc.b	$21, $72, $00, $10, $02, $68, $24, $0D ;0x0 (0x0003BCE6-0x0003BCEE, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_94354
	dc.b	$08
	dc.b	$10

Enemy_Lyle:
	dc.l	ArtComp_EnemyLyle
	dc.b	$00, $AC, $00, $24
	dc.w	EnemyName_Lyle-EnemyNameData
	dc.b	$00, $4E ;0x0 (0x0003BCF8-0x0003BD00, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$07
	dc.b	$99
	dc.b	$00, $19, $00, $64 ;0x0 (0x0003BD04-0x0003BD08, Entry count: 0x00000004) [Unknown data]
	dc.b	$21
	dc.b	$00
	dc.b	$00, $01, $00, $01, $00, $0A, $2C, $0F ;0x0 (0x0003BD0A-0x0003BD12, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_97004
	dc.b	$0C
	dc.b	$10

Enemy_Sari:
	dc.l	ArtComp_EnemySari
	dc.b	$00, $AD, $00, $06
	dc.w	EnemyName_Sari-EnemyNameData
	dc.b	$00, $D2 ;0x0 (0x0003BD1C-0x0003BD24, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$63 ;0x0 (0x0003BD26-0x0003BD27, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$00, $3C, $00, $3C ;0x0 (0x0003BD28-0x0003BD2C, Entry count: 0x00000004) [Unknown data]
	dc.b	$3C
	dc.b	$00
	dc.b	$00, $01, $00, $01, $01, $FE, $2C, $00 ;0x0 (0x0003BD2E-0x0003BD36, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_97150
	dc.b	$0C
	dc.b	$0C

Enemy_Lune:
	dc.l	ArtComp_EnemyLune
	dc.b	$00, $AE, $00, $06
	dc.w	EnemyName_Lune-EnemyNameData
	dc.b	$07, $85 ;0x0 (0x0003BD40-0x0003BD48, Entry count: 0x00000008) [Unknown data]
	dc.w	$54
	dc.b	$06
	dc.b	$CC
	dc.b	$00, $1E, $00, $C8 ;0x0 (0x0003BD4C-0x0003BD50, Entry count: 0x00000004) [Unknown data]
	dc.b	$50
	dc.b	$00
	dc.b	$00, $01, $00, $01, $01, $FE, $2C, $0F ;0x0 (0x0003BD52-0x0003BD5A, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_9720C
	dc.b	$0C
	dc.b	$10

Enemy_Kara:
	dc.l	ArtComp_EnemyKara
	dc.b	$00, $AF, $00, $06
	dc.w	EnemyName_Kara-EnemyNameData
	dc.b	$00, $FA ;0x0 (0x0003BD60-0x0003BD6C, Entry count: 0x0000000C) [Unknown data]
	dc.w	$4C	;Predicted (Code target predicted at 0x10D70)
	dc.b	$0B, $66, $00, $2D, $00, $32, $28, $00, $00, $00, $00, $01, $00, $0A, $2C, $0F
	dc.l	loc_9734C
	dc.b	$0C, $10 ;0x0 (0x0003BD6E-0x0003BD84, Entry count: 0x00000016) [Unknown data]

Enemy_Siren:
	dc.l	ArtComp_EnemySiren
	dc.b	$00, $B0, $00, $06
	dc.w	EnemyName_Siren-EnemyNameData
	dc.b	$05, $14 ;0x0 (0x0003BD88-0x0003BD90, Entry count: 0x00000008) [Unknown data]
	dc.w	$54
	dc.b	$05
	dc.b	$80
	dc.b	$00, $46, $01, $2C ;0x0 (0x0003BD94-0x0003BD98, Entry count: 0x00000004) [Unknown data]
	dc.b	$49
	dc.b	$00
	dc.b	$00, $01, $00, $01, $00, $0A, $2C, $0F ;0x0 (0x0003BD9A-0x0003BDA2, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_97454
	dc.b	$0C
	dc.b	$10

Enemy_Rulakir:
	dc.l	ArtComp_EnemyRulakir
	dc.b	$00, $B1, $00, $06
	dc.w	EnemyName_Rulakir-EnemyNameData
	dc.b	$05, $DC ;0x0 (0x0003BDAC-0x0003BDB4, Entry count: 0x00000008) [Unknown data]
	dc.w	$54
	dc.b	$0F
	dc.b	$80
	dc.b	$00, $78, $01, $F4 ;0x0 (0x0003BDB8-0x0003BDBC, Entry count: 0x00000004) [Unknown data]
	dc.b	$6E
	dc.b	$00
	dc.b	$00, $01, $00, $01, $00, $0A, $2C, $0F ;0x0 (0x0003BDBE-0x0003BDC6, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_97088
	dc.b	$08
	dc.b	$10

Enemy_KingCille:
	dc.l	ArtComp_EnemyKingCille
	dc.b	$00, $B2, $00, $06
	dc.w	EnemyName_KingCille-EnemyNameData
	dc.b	$01, $90 ;0x0 (0x0003BDD0-0x0003BDD8, Entry count: 0x00000008) [Unknown data]
	dc.w	$4C
	dc.b	$05
	dc.b	$99
	dc.b	$00, $1E, $00, $32 ;0x0 (0x0003BDDC-0x0003BDE0, Entry count: 0x00000004) [Unknown data]
	dc.b	$23
	dc.b	$00
	dc.b	$00, $01, $00, $01, $00, $0A, $2C, $0F ;0x0 (0x0003BDE2-0x0003BDEA, Entry count: 0x00000008) [Unknown data]
	dc.l	loc_96F1C
	dc.b	$08
	dc.b	$0C

Enemy_Body:
	dc.b	$00, $00, $00, $00, $00, $B2, $00, $2A
	dc.w	EnemyName_Body-EnemyNameData
	dc.b	$1F, $40 ;0x0 (0x0003BDF0-0x0003BDFC, Entry count: 0x0000000C) [Unknown data]
	dc.w	$54
	dc.b	$10
	dc.b	$80
	dc.b	$00, $64, $00, $3C, $64 ;0x0 (0x0003BE00-0x0003BE05, Entry count: 0x00000005) [Unknown data]
	dc.b	$00
	dc.b	$FD, $E8, $FD, $E8, $00, $0A, $2C, $0F
	dc.l	loc_96F1C
	dc.b	$08, $0C ;0x0 (0x0003BE06-0x0003BE14, Entry count: 0x0000000E) [Unknown data]