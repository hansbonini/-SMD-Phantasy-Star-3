; =========================================================
; Scene Settings
;
; byte 1 = tile width of the scene
; byte 2 = tile height of the scene
; byte 3 = ?
; byte 4 = ?
; byte 5 = handles encounters; $FF enables battle, $00 disables enemy encounters
; byte 6 = Index for battle backgrounds
;		00 = grass
;		04 = snow
;		08 = desert
;		0C = stars & clouds (satellite)
;		14 = Island Cave/Wren's Cave
;		18 = advanced dungeons
;		1C = castle
;		20 = castle
;		24 = Rebels' Cave
;		28 = castle dungeon
;		2C = castle dungeon
;		30 = Divisia dungeon
; byte 7 = music ID
; byte 8 = scene type? affects how a scene is drawn and collision
; =========================================================


loc_3C70A:
	dc.b	$60, $30, $25, $0A, $FF, $00 ;0x3A0
	dc.b	MusicID_World1
	dc.b	$00

loc_3C712:
	dc.b	$60, $30, $25, $0A, $FF, $08 ;0x0 (0x0003C712-0x0003C718, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_World1
	dc.b	$00

loc_3C71A:
	dc.b	$60, $30, $25, $0A, $FF, $04 ;0x0 (0x0003C71A-0x0003C720, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_World1
	dc.b	$00

loc_3C722:
	dc.b	$20, $18, $00, $00, $FF, $0C ;0x0 (0x0003C722-0x0003C728, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Satellite
	dc.b	$FF

loc_3C72A:
	dc.b	$20, $18, $00, $00, $00, $0C ;0x0 (0x0003C72A-0x0003C730, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Satellite
	dc.b	$FF

loc_3C732:
	dc.b	$20, $18, $10, $00, $00, $0C ;0x0 (0x0003C732-0x0003C738, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Satellite
	dc.b	$FF

loc_3C73A:
	dc.b	$30, $18, $02, $0D, $FF, $18 ;0x0 (0x0003C73A-0x0003C740, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon2
	dc.b	$FF

loc_3C742:
	dc.b	$10, $18, $02, $0D, $FF, $18 ;0x0 (0x0003C742-0x0003C748, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon2
	dc.b	$FF

loc_3C74A:
	dc.b	$30, $18, $00, $00, $00, $00 ;0x0 (0x0003C74A-0x0003C750, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C752:
	dc.b	$30, $18, $00, $00, $00, $00 ;0x0 (0x0003C752-0x0003C758, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon2
	dc.b	$FF

loc_3C75A:
	dc.b	$30, $18, $00, $00, $FF, $14 ;0x0 (0x0003C75A-0x0003C760, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C762:
	dc.b	$30, $18, $00, $00, $FF, $24 ;0x0 (0x0003C762-0x0003C768, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C76A:
	dc.b	$30, $18, $00, $00, $FF, $28 ;0x0 (0x0003C76A-0x0003C770, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C772:
	dc.b	$30, $18, $00, $00, $FF, $30 ;0x0 (0x0003C772-0x0003C778, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C77A:
	dc.b	$30, $18, $00, $00, $FF, $2C ;0x0 (0x0003C77A-0x0003C780, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C782:
	dc.b	$20, $18, $00, $00, $00, $00 ;0x0 (0x0003C782-0x0003C788, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Skyhaven
	dc.b	$FF

loc_3C78A:
	dc.b	$30, $28, $00, $00, $00, $20 ;0x0 (0x0003C78A-0x0003C790, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Skyhaven
	dc.b	$FF

loc_3C792:
	dc.b	$30, $28, $00, $00, $FF, $20 ;0x0 (0x0003C792-0x0003C798, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Lashute
	dc.b	$FF

loc_3C79A:
	dc.b	$10, $10, $00, $00, $00, $00 ;0x0 (0x0003C79A-0x0003C7A0, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_LayanTemple
	dc.b	$00

loc_3C7A2:
	dc.b	$20, $18, $00, $00, $FF, $1C
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C7AA:
	dc.b	$30, $18, $00, $00, $00, $00 ;0x0 (0x0003C7A2-0x0003C7B0, Entry count: 0x0000000E) [Unknown data]
	dc.b	MusicID_LayaWorld
	dc.b	$00

loc_3C7B2:
	dc.b	$10, $18, $00, $00, $00, $00
	dc.b	MusicID_Dungeon1
	dc.b	$00

loc_3C7BA:
	dc.b	$20, $18, $00, $00, $00, $00 ;0x0 (0x0003C7B2-0x0003C7C0, Entry count: 0x0000000E) [Unknown data]
	dc.b	MusicID_Town
	dc.b	$00

loc_3C7C2:
	dc.b	$10, $18, $00, $00, $00, $00 ;0x0 (0x0003C7C2-0x0003C7C8, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Town
	dc.b	$00

loc_3C7CA:
	dc.b	$20, $18, $00, $00, $00, $00 ;0x0 (0x0003C7CA-0x0003C7D0, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Shusoran
	dc.b	$00

loc_3C7D2:
	dc.b	$20, $18, $02, $0D, $00, $00 ;0x0 (0x0003C7D2-0x0003C7D8, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Wren
	dc.b	$00

loc_3C7DA:
	dc.b	$20, $18, $02, $0D, $00, $00 ;0x0 (0x0003C7DA-0x0003C7E0, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_RoyalWaltz
	dc.b	$00

loc_3C7E2:
	dc.b	$20, $18, $02, $0D, $00, $00 ;0x0 (0x0003C7E2-0x0003C7E8, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Castle
	dc.b	$00

loc_3C7EA:
	dc.b	$20, $18, $02, $0D, $FF, $1C ;0x0 (0x0003C7EA-0x0003C7F0, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Castle
	dc.b	$00

loc_3C7F2:
	dc.b	$30, $18, $02, $0D, $FF, $20 ;0x0 (0x0003C7F2-0x0003C7F8, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Castle
	dc.b	$00

loc_3C7FA:
	dc.b	$30, $18, $02, $0D, $FF, $1C ;0x0 (0x0003C7FA-0x0003C800, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Castle
	dc.b	$00

loc_3C802:
	dc.b	$30, $18, $02, $0D, $00, $00 ;0x0 (0x0003C802-0x0003C808, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Castle
	dc.b	$00

loc_3C80A:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C80A-0x0003C810, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$00

loc_3C812:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C812-0x0003C818, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Shop
	dc.b	$00

loc_3C81A:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C81A-0x0003C820, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Church
	dc.b	$00

loc_3C822:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C822-0x0003C828, Entry count: 0x00000006) [Unknown data]
	dc.b	MusicID_Fortune
	dc.b	$00

loc_3C82A:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C82A-0x0003C830, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$00

loc_3C832:
	dc.b	$0A, $07, $00, $00, $00, $00 ;0x0 (0x0003C832-0x0003C838, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$00