; ============================================
; Byte 1 = Front row enemy ID
; Byte 2 = Number of front row enemies; range 1-3
; Byte 3 = Back row enemy ID
; Byte 4 = Number of back row enemies; range 1-2
;
; The same group can be used twice
; ============================================

; ============================================
EnemyGroupOffset:

loc_79000:	dc.w	EnemyGroupData-loc_79000
loc_79002:	dc.w	EnemyGroupData-loc_79002
loc_79004:	dc.w	EnemyGroupData-loc_79004
loc_79006:	dc.w	EnemyGroupData-loc_79006
loc_79008:	dc.w	EnemyGroupData-loc_79008
loc_7900A:	dc.w	EnemyGroupData-loc_7900A
loc_7900C:	dc.w	EnemyGroupData-loc_7900C
; ============================================

EnemyGroupData:

loc_7900E:
	dc.b	$15
	dc.b	$00
	dc.b	$15
	dc.b	$00

loc_79012:
	dc.b	EnemyID_Chirper
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_79016:
	dc.b	EnemyID_Chirper
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7901A:
	dc.b	EnemyID_Eindon
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_7901E:
	dc.b	EnemyID_Eindon
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79022:
	dc.b	EnemyID_Eindon
	dc.b	$01
	dc.b	EnemyID_Glowtoad
	dc.b	$01

loc_79026:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Moos
	dc.b	$01

loc_7902A:
	dc.b	EnemyID_Tsveidon
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7902E:
	dc.b	EnemyID_Tsveidon
	dc.b	$02
	dc.b	EnemyID_Moos
	dc.b	$01

loc_79032:
	dc.b	EnemyID_Nayl
	dc.b	$01
	dc.b	EnemyID_Lobowing
	dc.b	$01

loc_79036:
	dc.b	EnemyID_Nayl
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_7903A:
	dc.b	EnemyID_Buzzgull
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_7903E:
	dc.b	EnemyID_Buzzgull
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79042:
	dc.b	EnemyID_Lashgull
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_79046:
	dc.b	EnemyID_Lashgull
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7904A:
	dc.b	EnemyID_Tsveidon
	dc.b	$01
	dc.b	EnemyID_Grinder
	dc.b	$01

loc_7904E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Giant
	dc.b	$01

loc_79052:
	dc.b	EnemyID_Tsveidon
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_79056:
	dc.b	EnemyID_Flayl
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_7905A:
	dc.b	EnemyID_Flayl
	dc.b	$01
	dc.b	EnemyID_Moos
	dc.b	$01

loc_7905E:
	dc.b	EnemyID_Flayl
	dc.b	$01
	dc.b	EnemyID_Gilatoad
	dc.b	$01

loc_79062:
	dc.b	EnemyID_Clump
	dc.b	$02
	dc.b	EnemyID_Hopliz
	dc.b	$01

loc_79066:
	dc.b	EnemyID_Clump
	dc.b	$01
	dc.b	EnemyID_Hopliz
	dc.b	$02

loc_7906A:
	dc.b	EnemyID_Eindon
	dc.b	$03
	dc.b	EnemyID_Irisa
	dc.b	$01

loc_7906E:
	dc.b	EnemyID_Tsveidon
	dc.b	$03
	dc.b	EnemyID_Irisa
	dc.b	$01

loc_79072:
	dc.b	EnemyID_Tsveidon
	dc.b	$01
	dc.b	EnemyID_Fearmoos
	dc.b	$01

loc_79076:
	dc.b	EnemyID_Eindon
	dc.b	$01
	dc.b	EnemyID_Fearmoos
	dc.b	$02

loc_7907A:
	dc.b	EnemyID_Glop
	dc.b	$03
	dc.b	EnemyID_Lobowing
	dc.b	$02

loc_7907E:
	dc.b	EnemyID_Glop
	dc.b	$03
	dc.b	EnemyID_Lobowing
	dc.b	$01

loc_79082:
	dc.b	EnemyID_Cluster
	dc.b	$03
	dc.b	EnemyID_Fearmoos
	dc.b	$01

loc_79086:
	dc.b	EnemyID_Cluster
	dc.b	$02
	dc.b	EnemyID_Fearmoos
	dc.b	$02

loc_7908A:
	dc.b	EnemyID_Chirper
	dc.b	$01
	dc.b	EnemyID_Lasher
	dc.b	$01

loc_7908E:
	dc.b	EnemyID_Chirper
	dc.b	$03
	dc.b	EnemyID_Lasher
	dc.b	$01

loc_79092:
	dc.b	EnemyID_Glop
	dc.b	$03
	dc.b	EnemyID_Blotter
	dc.b	$01

loc_79096:
	dc.b	EnemyID_Glop
	dc.b	$02
	dc.b	EnemyID_Blotter
	dc.b	$01

loc_7909A:
	dc.b	EnemyID_Flayl
	dc.b	$03
	dc.b	EnemyID_Lobobat
	dc.b	$01

loc_7909E:
	dc.b	EnemyID_Dryad
	dc.b	$01
	dc.b	EnemyID_Clops
	dc.b	$01

loc_790A2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Clops
	dc.b	$01

loc_790A6:
	dc.b	EnemyID_Dryad
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_790AA:
	dc.b	EnemyID_Arachne
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_790AE:
	dc.b	EnemyID_Arachne
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_790B2:
	dc.b	EnemyID_Arachne
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_790B6:
	dc.b	EnemyID_Blink
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_790BA:
	dc.b	EnemyID_Blink
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_790BE:
	dc.b	EnemyID_Arachne
	dc.b	$01
	dc.b	EnemyID_Seeker
	dc.b	$01

loc_790C2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Seeker
	dc.b	$02

loc_790C6:
	dc.b	EnemyID_Arachne
	dc.b	$02
	dc.b	EnemyID_Dogbot
	dc.b	$01

loc_790CA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Dogbot
	dc.b	$01

loc_790CE:
	dc.b	EnemyID_Arachne
	dc.b	$02
	dc.b	EnemyID_Agribot
	dc.b	$01

loc_790D2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Stix
	dc.b	$01

loc_790D6:
	dc.b	EnemyID_Lazrbot
	dc.b	$02
	dc.b	EnemyID_Stix
	dc.b	$01

loc_790DA:
	dc.b	EnemyID_Lazrbot
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_790DE:
	dc.b	EnemyID_Lazrbot
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_790E2:
	dc.b	EnemyID_Arachne
	dc.b	$03
	dc.b	EnemyID_Hunter
	dc.b	$01

loc_790E6:
	dc.b	EnemyID_Arachne
	dc.b	$01
	dc.b	EnemyID_Hunter
	dc.b	$02

loc_790EA:
	dc.b	EnemyID_Blink
	dc.b	$01
	dc.b	EnemyID_Doomfly
	dc.b	$01

loc_790EE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Doomfly
	dc.b	$01

loc_790F2:
	dc.b	EnemyID_Chirpbot
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_790F6:
	dc.b	EnemyID_Chirpbot
	dc.b	$03
	dc.b	EnemyID_Dogbot
	dc.b	$01

loc_790FA:
	dc.b	EnemyID_Warblbot
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_790FE:
	dc.b	EnemyID_Warblbot
	dc.b	$03
	dc.b	EnemyID_Stix
	dc.b	$01

loc_79102:
	dc.b	EnemyID_Commsat
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_79106:
	dc.b	EnemyID_Commsat
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7910A:
	dc.b	EnemyID_Commsat
	dc.b	$03
	dc.b	EnemyID_Agribot
	dc.b	$01

loc_7910E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Polebot
	dc.b	$01

loc_79112:
	dc.b	EnemyID_Lazrbot
	dc.b	$03
	dc.b	EnemyID_Polebot
	dc.b	$01

loc_79116:
	dc.b	EnemyID_Minimech
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_7911A:
	dc.b	EnemyID_Minimech
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7911E:
	dc.b	EnemyID_Minimech
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_79122:
	dc.b	EnemyID_Minimech
	dc.b	$02
	dc.b	EnemyID_Feralbot
	dc.b	$01

loc_79126:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Feralbot
	dc.b	$01

loc_7912A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Demonfly
	dc.b	$01

loc_7912E:
	dc.b	EnemyID_Blink
	dc.b	$01
	dc.b	EnemyID_Demonfly
	dc.b	$01

loc_79132:
	dc.b	EnemyID_Darachne
	dc.b	$02
	dc.b	EnemyID_Demonfly
	dc.b	$01

loc_79136:
	dc.b	EnemyID_Blink
	dc.b	$03
	dc.b	EnemyID_Doomfly
	dc.b	$01

loc_7913A:
	dc.b	EnemyID_Commsat
	dc.b	$01
	dc.b	EnemyID_Glazstix
	dc.b	$01

loc_7913E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Glazstix
	dc.b	$01

loc_79142:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Flopper
	dc.b	$01

loc_79146:
	dc.b	EnemyID_Minimech
	dc.b	$02
	dc.b	EnemyID_Flopper
	dc.b	$01

loc_7914A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Polebot
	dc.b	$01

loc_7914E:
	dc.b	EnemyID_Lazrbot
	dc.b	$01
	dc.b	EnemyID_Polebot
	dc.b	$01

loc_79152:
	dc.b	EnemyID_Spysat
	dc.b	$02
	dc.b	EnemyID_Stickbot
	dc.b	$01

loc_79156:
	dc.b	EnemyID_Mech
	dc.b	$02
	dc.b	EnemyID_Stickbot
	dc.b	$01

loc_7915A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Fatale
	dc.b	$01

loc_7915E:
	dc.b	EnemyID_Lazrbot
	dc.b	$01
	dc.b	EnemyID_Fatale
	dc.b	$01

loc_79162:
	dc.b	EnemyID_Spysat
	dc.b	$01
	dc.b	EnemyID_Feralbot
	dc.b	$01

loc_79166:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Feralbot
	dc.b	$01

loc_7916A:
	dc.b	EnemyID_Ooze
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7916E:
	dc.b	EnemyID_Ooze
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_79172:
	dc.b	EnemyID_Warbler
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79176:
	dc.b	EnemyID_Warbler
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_7917A:
	dc.b	EnemyID_Dreidon
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7917E:
	dc.b	EnemyID_Dreidon
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_79182:
	dc.b	EnemyID_Lizrd
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79186:
	dc.b	EnemyID_Lizrd
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_7918A:
	dc.b	EnemyID_Dreidon
	dc.b	$02
	dc.b	EnemyID_Rosa
	dc.b	$01

loc_7918E:
	dc.b	EnemyID_Dreidon
	dc.b	$01
	dc.b	EnemyID_Rosa
	dc.b	$02

loc_79192:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Biclops
	dc.b	$01

loc_79196:
	dc.b	EnemyID_Nova
	dc.b	$02
	dc.b	EnemyID_Biclops
	dc.b	$01

loc_7919A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Smasher
	dc.b	$01

loc_7919E:
	dc.b	EnemyID_Dreidon
	dc.b	$02
	dc.b	EnemyID_Smasher
	dc.b	$01

loc_791A2:
	dc.b	EnemyID_Dreidon
	dc.b	$01
	dc.b	EnemyID_Catwoman
	dc.b	$01

loc_791A6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Catwoman
	dc.b	$02

loc_791AA:
	dc.b	EnemyID_Lizrd
	dc.b	$01
	dc.b	EnemyID_Leapliz
	dc.b	$02

loc_791AE:
	dc.b	EnemyID_Lizrd
	dc.b	$02
	dc.b	EnemyID_Leapliz
	dc.b	$01

loc_791B2:
	dc.b	EnemyID_Nova
	dc.b	$02
	dc.b	EnemyID_Primus
	dc.b	$01

loc_791B6:
	dc.b	EnemyID_Nova
	dc.b	$01
	dc.b	EnemyID_Primus
	dc.b	$01

loc_791BA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Slasher
	dc.b	$01

loc_791BE:
	dc.b	EnemyID_Nova
	dc.b	$02
	dc.b	EnemyID_Slasher
	dc.b	$01

loc_791C2:
	dc.b	EnemyID_Blizrd
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_791C6:
	dc.b	EnemyID_Blizrd
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_791CA:
	dc.b	EnemyID_Fire
	dc.b	$02
	dc.b	EnemyID_Primus
	dc.b	$01

loc_791CE:
	dc.b	EnemyID_Fire
	dc.b	$01
	dc.b	EnemyID_Primus
	dc.b	$01

loc_791D2:
	dc.b	EnemyID_Fire
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_791D6:
	dc.b	EnemyID_Dryad
	dc.b	$02
	dc.b	EnemyID_Bushi
	dc.b	$01

loc_791DA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Bushi
	dc.b	$02

loc_791DE:
	dc.b	EnemyID_Hackgull
	dc.b	$03
	dc.b	$00
	dc.b	$00

loc_791E2:
	dc.b	EnemyID_Pulsar
	dc.b	$01
	dc.b	EnemyID_Blueroot
	dc.b	$01

loc_791E6:
	dc.b	EnemyID_Pulsar
	dc.b	$02
	dc.b	EnemyID_Blueroot
	dc.b	$01

loc_791EA:
	dc.b	EnemyID_Lashgull
	dc.b	$01
	dc.b	EnemyID_Harpy
	dc.b	$01

loc_791EE:
	dc.b	EnemyID_Buzzgull
	dc.b	$01
	dc.b	EnemyID_Harpy
	dc.b	$02

loc_791F2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Titan
	dc.b	$01

loc_791F6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Tigress
	dc.b	$01

loc_791FA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Tigress
	dc.b	$02

loc_791FE:
	dc.b	EnemyID_Glop
	dc.b	$02
	dc.b	EnemyID_Beastess
	dc.b	$01

loc_79202:
	dc.b	EnemyID_Ooze
	dc.b	$02
	dc.b	EnemyID_Beastess
	dc.b	$02

loc_79206:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Flutter
	dc.b	$01

loc_7920A:
	dc.b	EnemyID_Fire
	dc.b	$01
	dc.b	EnemyID_Secundus
	dc.b	$01

loc_7920E:
	dc.b	EnemyID_Fire
	dc.b	$02
	dc.b	EnemyID_Secundus
	dc.b	$01

loc_79212:
	dc.b	EnemyID_Clique
	dc.b	$02
	dc.b	EnemyID_Pinkroot
	dc.b	$01

loc_79216:
	dc.b	EnemyID_Cluster
	dc.b	$02
	dc.b	EnemyID_Pinkroot
	dc.b	$01

loc_7921A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Dragon
	dc.b	$01

loc_7921E:
	dc.b	EnemyID_Fire
	dc.b	$02
	dc.b	EnemyID_Skeleton
	dc.b	$01

loc_79222:
	dc.b	EnemyID_Dryad
	dc.b	$02
	dc.b	EnemyID_Kensai
	dc.b	$01

loc_79226:
	dc.b	EnemyID_Dryad
	dc.b	$03
	dc.b	EnemyID_Kensai
	dc.b	$01

loc_7922A:
	dc.b	EnemyID_Squawker
	dc.b	$01
	dc.b	EnemyID_Wolfbot
	dc.b	$01

loc_7922E:
	dc.b	EnemyID_Chirper
	dc.b	$01
	dc.b	EnemyID_Wolfbot
	dc.b	$01

loc_79232:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Deathfly
	dc.b	$01

loc_79236:
	dc.b	EnemyID_Dryad
	dc.b	$01
	dc.b	EnemyID_Deathfly
	dc.b	$01

loc_7923A:
	dc.b	EnemyID_Spinner
	dc.b	$02
	dc.b	EnemyID_Metlstix
	dc.b	$01

loc_7923E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Metlstix
	dc.b	$01

loc_79242:
	dc.b	EnemyID_Slayl
	dc.b	$01
	dc.b	EnemyID_Killer
	dc.b	$01

loc_79246:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Killer
	dc.b	$01

loc_7924A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Crusher
	dc.b	$01

loc_7924E:
	dc.b	EnemyID_Zarachne
	dc.b	$02
	dc.b	EnemyID_Crusher
	dc.b	$01

loc_79252:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Triclops
	dc.b	$01

loc_79256:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Tertius
	dc.b	$01

loc_7925A:
	dc.b	EnemyID_Killsat
	dc.b	$01
	dc.b	EnemyID_Tertius
	dc.b	$01

loc_7925E:
	dc.b	EnemyID_Squakbot
	dc.b	$02
	dc.b	EnemyID_Amazon
	dc.b	$01

loc_79262:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Gnasher
	dc.b	$01

loc_79266:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Megatoad
	dc.b	$01

loc_7926A:
	dc.b	EnemyID_Killsat
	dc.b	$01
	dc.b	EnemyID_Lobohawk
	dc.b	$01

loc_7926E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Lobohawk
	dc.b	$02

loc_79272:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Viola
	dc.b	$01

loc_79276:
	dc.b	EnemyID_Dryad
	dc.b	$01
	dc.b	EnemyID_Viola
	dc.b	$02

loc_7927A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Trogess
	dc.b	$01

loc_7927E:
	dc.b	EnemyID_Dryad
	dc.b	$02
	dc.b	EnemyID_Banshee
	dc.b	$01

loc_79282:
	dc.b	EnemyID_Killsat
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79286:
	dc.b	EnemyID_Zarachne
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7928A:
	dc.b	EnemyID_Grizrd
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7928E:
	dc.b	EnemyID_Mech
	dc.b	$01
	dc.b	EnemyID_Griffin
	dc.b	$01

loc_79292:
	dc.b	EnemyID_Dragon
	dc.b	$02
	dc.b	EnemyID_Griffin
	dc.b	$01

loc_79296:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Griffin
	dc.b	$01

loc_7929A:
	dc.b	EnemyID_Murafire
	dc.b	$01
	dc.b	EnemyID_Flayl
	dc.b	$01

loc_7929E:
	dc.b	EnemyID_Fire
	dc.b	$02
	dc.b	EnemyID_Flayl
	dc.b	$01

loc_792A2:
	dc.b	EnemyID_Flash
	dc.b	$01
	dc.b	EnemyID_Erinye
	dc.b	$01

loc_792A6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Erinye
	dc.b	$01

loc_792AA:
	dc.b	EnemyID_Blink
	dc.b	$01
	dc.b	EnemyID_Roboman
	dc.b	$01

loc_792AE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Roboman
	dc.b	$01

loc_792B2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Morte
	dc.b	$01

loc_792B6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Morte
	dc.b	$02

loc_792BA:
	dc.b	EnemyID_Spysat
	dc.b	$01
	dc.b	EnemyID_Warbot
	dc.b	$01

loc_792BE:
	dc.b	EnemyID_Killsat
	dc.b	$01
	dc.b	EnemyID_Warbot
	dc.b	$01

loc_792C2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Warbot
	dc.b	$01

loc_792C6:
	dc.b	EnemyID_Maxmech
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_792CA:
	dc.b	EnemyID_Maxmech
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_792CE:
	dc.b	EnemyID_Azufire
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_792D2:
	dc.b	EnemyID_Azufire
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_792D6:
	dc.b	EnemyID_Strobe
	dc.b	$01
	dc.b	$00
	dc.b	$00

loc_792DA:
	dc.b	EnemyID_Strobe
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_792DE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Stickbot
	dc.b	$01

loc_792E2:
	dc.b	EnemyID_Mazrbot
	dc.b	$01
	dc.b	EnemyID_Stickbot
	dc.b	$01

loc_792E6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Wirebot
	dc.b	$01

loc_792EA:
	dc.b	EnemyID_Mazrbot
	dc.b	$01
	dc.b	EnemyID_Wirebot
	dc.b	$01

loc_792EE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Stickle
	dc.b	$01

loc_792F2:
	dc.b	EnemyID_Glop
	dc.b	$01
	dc.b	EnemyID_Stickle
	dc.b	$01

loc_792F6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Orb
	dc.b	$01

loc_792FA:
	dc.b	EnemyID_Nova
	dc.b	$01
	dc.b	EnemyID_Orb
	dc.b	$01

loc_792FE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Finis
	dc.b	$01

loc_79302:
	dc.b	EnemyID_Nayl
	dc.b	$01
	dc.b	EnemyID_Finis
	dc.b	$01

loc_79306:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Roboman
	dc.b	$01

loc_7930A:
	dc.b	EnemyID_Hackgull
	dc.b	$01
	dc.b	EnemyID_Roboman
	dc.b	$01

loc_7930E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Mechman
	dc.b	$01

loc_79312:
	dc.b	EnemyID_Lashgull
	dc.b	$02
	dc.b	EnemyID_Mechman
	dc.b	$01

loc_79316:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Droidman
	dc.b	$01

loc_7931A:
	dc.b	EnemyID_Spinner
	dc.b	$01
	dc.b	EnemyID_Droidman
	dc.b	$01

loc_7931E:
	dc.b	EnemyID_Impfoul
	dc.b	$01
	dc.b	EnemyID_Mechman
	dc.b	$01

loc_79322:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Mechman
	dc.b	$01

loc_79326:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Valkyrie
	dc.b	$01

loc_7932A:
	dc.b	EnemyID_Sylph
	dc.b	$01
	dc.b	EnemyID_Valkyrie
	dc.b	$01

loc_7932E:
	dc.b	EnemyID_Lazrbot
	dc.b	$01
	dc.b	EnemyID_Splatter
	dc.b	$01

loc_79332:
	dc.b	EnemyID_Mazrbot
	dc.b	$01
	dc.b	EnemyID_Splatter
	dc.b	$01

loc_79336:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Lioness
	dc.b	$01

loc_7933A:
	dc.b	EnemyID_Eindon
	dc.b	$01
	dc.b	EnemyID_Lioness
	dc.b	$01

loc_7933E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Goldroot
	dc.b	$01

loc_79342:
	dc.b	EnemyID_Quasar
	dc.b	$01
	dc.b	EnemyID_Goldroot
	dc.b	$01

loc_79346:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Diremoos
	dc.b	$01

loc_7934A:
	dc.b	EnemyID_Clump
	dc.b	$01
	dc.b	EnemyID_Diremoos
	dc.b	$01

loc_7934E:
	dc.b	EnemyID_Dryad
	dc.b	$01
	dc.b	EnemyID_Samurai
	dc.b	$01

loc_79352:
	dc.b	EnemyID_Nereid
	dc.b	$01
	dc.b	EnemyID_Samurai
	dc.b	$01

loc_79356:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Haunt
	dc.b	$01

loc_7935A:
	dc.b	EnemyID_Sylph
	dc.b	$01
	dc.b	EnemyID_Haunt
	dc.b	$01

loc_7935E:
	dc.b	EnemyID_Dryad
	dc.b	$01
	dc.b	EnemyID_Emir
	dc.b	$01

loc_79362:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Emir
	dc.b	$01

loc_79366:
	dc.b	EnemyID_Sylph
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7936A:
	dc.b	EnemyID_Twirler
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7936E:
	dc.b	EnemyID_Impfoul
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79372:
	dc.b	EnemyID_Quasar
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_79376:
	dc.b	EnemyID_Fazrbot
	dc.b	$02
	dc.b	$00
	dc.b	$00

loc_7937A:
	dc.b	EnemyID_Ooze
	dc.b	$01
	dc.b	EnemyID_Twig
	dc.b	$01

loc_7937E:
	dc.b	EnemyID_Pulsar
	dc.b	$01
	dc.b	EnemyID_Sphere
	dc.b	$01

loc_79382:
	dc.b	EnemyID_Quasar
	dc.b	$01
	dc.b	EnemyID_Globe
	dc.b	$01

loc_79386:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Droidman
	dc.b	$01

loc_7938A:
	dc.b	EnemyID_Lizrd
	dc.b	$01
	dc.b	EnemyID_Droidman
	dc.b	$01

loc_7938E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Drake
	dc.b	$01

loc_79392:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Wyrm
	dc.b	$01

loc_79396:
	dc.b	EnemyID_Impfoul
	dc.b	$01
	dc.b	EnemyID_Wraith
	dc.b	$01

loc_7939A:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Wraith
	dc.b	$01

loc_7939E:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Colossus
	dc.b	$01

loc_793A2:
	dc.b	EnemyID_Flayl
	dc.b	$01
	dc.b	EnemyID_Colossus
	dc.b	$01

loc_793A6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Demoness
	dc.b	$01

loc_793AA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Demoness
	dc.b	$02

loc_793AE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Caliph
	dc.b	$01

loc_793B2:
	dc.b	EnemyID_Minimech
	dc.b	$01
	dc.b	EnemyID_Caliph
	dc.b	$01

loc_793B6:
	dc.b	EnemyID_Slime
	dc.b	$01
	dc.b	EnemyID_Twig
	dc.b	$01

loc_793BA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Mantis
	dc.b	$01

loc_793BE:
	dc.b	EnemyID_Impvile
	dc.b	$02
	dc.b	EnemyID_Carder
	dc.b	$01

loc_793C2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Dire
	dc.b	$01

loc_793C6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Baneful
	dc.b	$01

loc_793CA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Malific
	dc.b	$01

loc_793CE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Goatman
	dc.b	$01

loc_793D2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Goatduke
	dc.b	$02

loc_793D6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Goatking
	dc.b	$01

loc_793DA:
	dc.b	EnemyID_Spinner
	dc.b	$02
	dc.b	EnemyID_Conjurer
	dc.b	$01

loc_793DE:
	dc.b	EnemyID_Twirler
	dc.b	$01
	dc.b	EnemyID_Wizard
	dc.b	$01

loc_793E2:
	dc.b	EnemyID_Wizzer
	dc.b	$01
	dc.b	EnemyID_Sorcerer
	dc.b	$01

loc_793E6:
	dc.b	EnemyID_Fire
	dc.b	$02
	dc.b	EnemyID_Fatima
	dc.b	$01

loc_793EA:
	dc.b	EnemyID_Azufire
	dc.b	$01
	dc.b	EnemyID_Zafirah
	dc.b	$01

loc_793EE:
	dc.b	EnemyID_Murafire
	dc.b	$01
	dc.b	EnemyID_Khalidah
	dc.b	$01

loc_793F2:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Punisher
	dc.b	$01

loc_793F6:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Torturer
	dc.b	$01

loc_793FA:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Executer
	dc.b	$01

loc_793FE:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Watcher
	dc.b	$01

loc_79402:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Defender
	dc.b	$01

loc_79406:
	dc.b	$00
	dc.b	$00
	dc.b	EnemyID_Guardian
	dc.b	$01