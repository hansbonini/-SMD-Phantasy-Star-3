; =================================================
; Techniques can either be used for enemies or allies dependent on how they're set and who is using them.
; The same index is carried over to enemy data for the tech copies and poison.
;
; byte 1-8 = Name (ends with $FC); shows up in battle
; byte 9 = ?
; byte 10 = Target
;	02 = single ally
;	04 = all allies
;	06 = dead ally (Rever uses this)
;	0A = single enemy
;	OC = single enemy row
;	0E = left or right groups
;	10 = all enemies
;	12 = escape statistic? (presumed, as it's only used with Rimit)
; byte 11 = TP cost
; byte 12 = index
; byte 13-16 = ??
; =================================================

Tech_Foi:
	dc.b	"Foi", $FC ;0x0 (0x000398B0-0x000398B4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x000398B4-0x000398B9, Entry count: 0x00000005) [Unknown data]
	dc.b	$0A
	dc.b	$02
	dc.b	$00
	dc.b	$00, $00, $00, $00 ;0x0 (0x000398BC-0x000398C0, Entry count: 0x00000004) [Unknown data]

Tech_Zan:
	dc.b	"Zan", $FC ;0x0 (0x000398C0-0x000398C4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x000398C4-0x000398C9, Entry count: 0x00000005) [Unknown data]
	dc.b	$0C
	dc.b	$02
	dc.b	$04
	dc.b	$00, $00, $00, $00 ;0x0 (0x000398CC-0x000398D0, Entry count: 0x00000004) [Unknown data]

Tech_Gra:
	dc.b	"Gra", $FC ;0x0 (0x000398D0-0x000398D4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x000398D4-0x000398D9, Entry count: 0x00000005) [Unknown data]
	dc.b	$10
	dc.b	$02
	dc.b	$08
	dc.b	$00, $00, $00, $00 ;0x0 (0x000398DC-0x000398E0, Entry count: 0x00000004) [Unknown data]

Tech_Tsu:
	dc.b	"Tsu", $FC ;0x0 (0x000398E0-0x000398E4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x000398E4-0x000398E9, Entry count: 0x00000005) [Unknown data]
	dc.b	$0E
	dc.b	$02
	dc.b	$0C
	dc.b	$00, $00, $00, $00 ;0x0 (0x000398EC-0x000398F0, Entry count: 0x00000004) [Unknown data]

Tech_Res:
	dc.b	"Res", $FC ;0x0 (0x000398F0-0x000398F4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $C0 ;0x0 (0x000398F4-0x000398F9, Entry count: 0x00000005) [Unknown data]
	dc.b	$02
	dc.b	$05
	dc.b	$10
	dc.b	$00, $00, $00, $00 ;0x0 (0x000398FC-0x00039900, Entry count: 0x00000004) [Unknown data]

Tech_Gires:
	dc.b	"Gires", $FC ;0x0 (0x00039900-0x00039906, Entry count: 0x00000006)
	dc.b	$00, $00, $C0 ;0x0 (0x00039906-0x00039909, Entry count: 0x00000003) [Unknown data]
	dc.b	$04
	dc.b	$05
	dc.b	$14
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003990C-0x00039910, Entry count: 0x00000004) [Unknown data]

Tech_Rever:
	dc.b	"Rever", $FC ;0x0 (0x00039910-0x00039916, Entry count: 0x00000006)
	dc.b	$00, $00, $C0 ;0x0 (0x00039916-0x00039919, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$05
	dc.b	$18
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003991C-0x00039920, Entry count: 0x00000004) [Unknown data]

Tech_Anti:
	dc.b	"Anti", $FC ;0x0 (0x00039920-0x00039925, Entry count: 0x00000005)
	dc.b	$00, $00, $00, $C0 ;0x0 (0x00039925-0x00039929, Entry count: 0x00000004) [Unknown data]
	dc.b	$02
	dc.b	$05
	dc.b	$1C
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003992C-0x00039930, Entry count: 0x00000004) [Unknown data]

Tech_Ner:
	dc.b	"Ner", $FC ;0x0 (0x00039930-0x00039934, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x00039934-0x00039939, Entry count: 0x00000005) [Unknown data]
	dc.b	$02
	dc.b	$01
	dc.b	$20
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003993C-0x00039940, Entry count: 0x00000004) [Unknown data]

Tech_Rimit:
	dc.b	"Rimit", $FC ;0x0 (0x00039940-0x00039946, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039946-0x00039949, Entry count: 0x00000003) [Unknown data]
	dc.b	$12
	dc.b	$01
	dc.b	$24
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003994C-0x00039950, Entry count: 0x00000004) [Unknown data]

Tech_Shiza:
	dc.b	"Shiza", $FC ;0x0 (0x00039950-0x00039956, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039956-0x00039959, Entry count: 0x00000003) [Unknown data]
	dc.b	$0A
	dc.b	$01
	dc.b	$28
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003995C-0x00039960, Entry count: 0x00000004) [Unknown data]

Tech_Deban:
	dc.b	"Deban", $FC ;0x0 (0x00039960-0x00039966, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039966-0x00039969, Entry count: 0x00000003) [Unknown data]
	dc.b	$0A
	dc.b	$01
	dc.b	$2C
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003996C-0x00039970, Entry count: 0x00000004) [Unknown data]

Tech_Fanbi:
	dc.b	"Fanbi", $FC ;0x0 (0x00039970-0x00039976, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039976-0x00039979, Entry count: 0x00000003) [Unknown data]
	dc.b	$02
	dc.b	$01
	dc.b	$30
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003997C-0x00039980, Entry count: 0x00000004) [Unknown data]

Tech_Forsa:
	dc.b	"Forsa", $FC ;0x0 (0x00039980-0x00039986, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039986-0x00039989, Entry count: 0x00000003) [Unknown data]
	dc.b	$0A
	dc.b	$01
	dc.b	$34
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003998C-0x00039990, Entry count: 0x00000004) [Unknown data]

Tech_Nasak:
	dc.b	"Nasak", $FC ;0x0 (0x00039990-0x00039996, Entry count: 0x00000006)
	dc.b	$00, $00, $40 ;0x0 (0x00039996-0x00039999, Entry count: 0x00000003) [Unknown data]
	dc.b	$04
	dc.b	$01
	dc.b	$38
	dc.b	$00, $00, $00, $00 ;0x0 (0x0003999C-0x000399A0, Entry count: 0x00000004) [Unknown data]

Tech_Shu:
	dc.b	"Shu", $FC ;0x0 (0x000399A0-0x000399A4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $40 ;0x0 (0x000399A4-0x000399A9, Entry count: 0x00000005) [Unknown data]
	dc.b	$02
	dc.b	$01
	dc.b	$3C
	dc.b	$00, $00, $00, $00

Tech_Megido:
	dc.b	"Megido", $FC
	dc.b	$00, $40, $02, $01, $40
	dc.b	$00, $00, $00, $00

Tech_Grantz:
	dc.b	"Grantz", $FC
	dc.b	$00, $40, $02, $01, $44 ;0x0 (0x000399AC-0x000399D0, Entry count: 0x00000024) [Unknown data]
	dc.b	$00, $00, $00, $00 ;0x20

Tech_FoiCopy:
	dc.b	"Foi", $FC ;0x0 (0x000399D0-0x000399D4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $00 ;0x0 (0x000399D4-0x000399D9, Entry count: 0x00000005) [Unknown data]
	dc.b	$02
	dc.b	$00 ;0x0 (0x000399DA-0x000399DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$48
	dc.b	$00, $00, $00, $00 ;0x0 (0x000399DC-0x000399E0, Entry count: 0x00000004) [Unknown data]

Tech_ZanCopy:
	dc.b	"Zan", $FC ;0x0 (0x000399E0-0x000399E4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $00 ;0x0 (0x000399E4-0x000399E9, Entry count: 0x00000005) [Unknown data]
	dc.b	$04
	dc.b	$00 ;0x0 (0x000399EA-0x000399EB, Entry count: 0x00000001) [Unknown data]
	dc.b	$4C
	dc.b	$00, $00, $00, $00 ;0x0 (0x000399EC-0x000399F0, Entry count: 0x00000004) [Unknown data]

Tech_GraCopy:
	dc.b	"Gra", $FC ;0x0 (0x000399F0-0x000399F4, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $00 ;0x0 (0x000399F4-0x000399F9, Entry count: 0x00000005) [Unknown data]
	dc.b	$04
	dc.b	$00 ;0x0 (0x000399FA-0x000399FB, Entry count: 0x00000001) [Unknown data]
	dc.b	$50
	dc.b	$00, $00, $00, $00 ;0x0 (0x000399FC-0x00039A00, Entry count: 0x00000004) [Unknown data]

Tech_TsuCopy:
	dc.b	"Tsu", $FC ;0x0 (0x00039A00-0x00039A04, Entry count: 0x00000004)
	dc.b	$00, $00, $00, $00, $00 ;0x0 (0x00039A04-0x00039A09, Entry count: 0x00000005) [Unknown data]
	dc.b	$04
	dc.b	$00 ;0x0 (0x00039A0A-0x00039A0B, Entry count: 0x00000001) [Unknown data]
	dc.b	$54
	dc.b	$00, $00, $00, $00 ;0x0 (0x00039A0C-0x00039A10, Entry count: 0x00000004) [Unknown data]

Tech_GiresCopy:
	dc.b	"Gires", $FC ;0x0 (0x00039A10-0x00039A16, Entry count: 0x00000006)
	dc.b	$00, $00, $00 ;0x0 (0x00039A16-0x00039A19, Entry count: 0x00000003) [Unknown data]
	dc.b	$10
	dc.b	$00 ;0x0 (0x00039A1A-0x00039A1B, Entry count: 0x00000001) [Unknown data]
	dc.b	$58
	dc.b	$00, $00, $00, $00 ;0x0 (0x00039A1C-0x00039A20, Entry count: 0x00000004) [Unknown data]

Tech_Poison:
	dc.b	"Poison", $FC ;0x0 (0x00039A20-0x00039A27, Entry count: 0x00000007)
	dc.b	$00, $00 ;0x0 (0x00039A27-0x00039A29, Entry count: 0x00000002) [Unknown data]
	dc.b	$02
	dc.b	$00 ;0x0 (0x00039A2A-0x00039A2B, Entry count: 0x00000001) [Unknown data]
	dc.b	$5C
	dc.b	$00, $00, $00, $00 ;0x0 (0x00039A2C-0x00039A30, Entry count: 0x00000004) [Unknown data]