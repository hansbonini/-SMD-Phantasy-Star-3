; --------------------------------------------------------------------
; Data is made up of 4 bytes and the processing of this data terminates
; when it reaches $FF.
;
; Byte 1 = Generation index: this byte is compared with the value in the generation_index
;		   value, and if the values are not the same, the next 4 bytes are processed
;
; Byte 2 = event_flags offset; if the flag is set, it updates
;		   the scene_id value with the following 2 bytes, otherwise they are skipped
;
; Bytes 3-4 = new scene ID
; --------------------------------------------------------------------
SceneUpdateScene_LandenWorld:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLandenWorld

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenWorld

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialLandenWorld

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialLandenWorld

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialLandenWorld

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialLandenWorld

	dc.b	$FF

	align 2

SceneUpdateScene_AridiaWorld:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynAridiaWorld

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialAridiaWorld

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialAridiaWorld

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialAridiaWorld

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialAridiaWorld

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialAridiaWorld

	dc.b	$FF

	align 2

SceneUpdateScene_AquaticaWorldFrozen:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_WeatherFixed
	dc.w	SceneID_AquaticaWorld

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynAquaticaWorld

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3AquaticaWorld

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3AquaticaWorld

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3AquaticaWorld

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3AquaticaWorld

	dc.b	$FF

	align 2

SceneUpdateScene_None:
	dc.b	$FF

	align 2

SceneUpdateScene_AynAzura:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Azura

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Azura

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Azura

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Azura

	dc.b	$FF

	align 2

SceneUpdateScene_NialDahlia:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_SeanCrysDahlia

	dc.b	GenerationID_Sean
	dc.b	$EC
	dc.w	$0270

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_SeanCrysDahlia

	dc.b	GenerationID_Crys
	dc.b	$EC
	dc.w	$0270

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AdanDahlia

	dc.b	GenerationID_Adan
	dc.b	$EC
	dc.w	$0274

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AronDahlia

	dc.b	GenerationID_Aron
	dc.b	$EC
	dc.w	$0278

	dc.b	$FF

	align 2

SceneUpdateScene_None23:
	dc.b	$FF

	align 2

SceneUpdateScene_SeanCrysDahlia:
	dc.b	GenerationID_Sean
	dc.b	$EC
	dc.w	$0270

	dc.b	GenerationID_Crys
	dc.b	$EC
	dc.w	$0270

	dc.b	$FF

	align 2

SceneUpdateScene_None24:
	dc.b	$FF

	align 2

SceneUpdateScene_AdanDahlia:
	dc.b	GenerationID_Adan
	dc.b	$EC
	dc.w	$0274

	dc.b	$FF

	align 2

SceneUpdateScene_None25:
	dc.b	$FF

	align 2

SceneUpdateScene_AronDahlia:
	dc.b	GenerationID_Aron
	dc.b	$EC
	dc.w	$0278

	dc.b	$FF

	align 2

SceneUpdateScene_None2:
	dc.b	$FF

	align 2

SceneUpdateScene_LandenCastle:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLandenCastleBeforeSari

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_SariJoined
	dc.w	SceneID_AynLandenCastleSariJoin

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenCastle

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_SeanLandenCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_CrysLandenCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AdanLandenCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AronLandenCastle

	dc.b	$FF

	align 2

SceneUpdateScene_Satera:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Satera

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Satera

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Satera

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Satera

	dc.b	$FF

	align 2

SceneUpdateScene_None4:
	dc.b	$FF

	align 2

SceneUpdateScene_AgoeCastle:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynAgoeCastle

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3AgoeCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3AgoeCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3AgoeCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3AgoeCastle

	dc.b	$FF

	align 2

SceneUpdateScene_ShusoranCastle:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_LenaJoined
	dc.w	SceneID_ShusoranCastleLenaJoin

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynShusoranCastle

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynShusoranCastleEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynShusoranCastleEmpty

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynShusoranCastleEmpty

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynShusoranCastleEmpty

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynShusoranCastleEmpty

	dc.b	$FF

	align 2

SceneUpdateScene_CilleCastle:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynCilleCastle

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynCilleCastleEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	$FF

	align 2

SceneUpdateScene_LensolCastle:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLensolCastle

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_LensolGateOpen
	dc.w	SceneID_AynLensolCastleGatesOpen

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_SeanCrysLensolCastle

	dc.b	GenerationID_Sean
	dc.b	$EB
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_SeanCrysLensolCastle

	dc.b	GenerationID_Crys
	dc.b	$EB
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	$FF

	align 2

SceneUpdateScene_AynCilleCastle:
	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynCilleCastleEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	$FF

	align 2

SceneUpdateScene_AynCilleCastleEmpty:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3CilleCastle

	dc.b	$FF

	align 2

SceneUpdateScene_None5:
	dc.b	$FF

	align 2

SceneUpdateScene_TechnaCastle:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3TechnaCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3TechnaCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3TechnaCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3TechnaCastle

	dc.b	$FF

	align 2

SceneUpdateScene_None6:
	dc.b	$FF

	align 2

SceneUpdateScene_DivisiaCastle:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaCastle

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaCastle

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaCastle

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaCastle

	dc.b	$FF

	align 2

SceneUpdateScene_None14:
	dc.b	$FF

	align 2

SceneUpdateScene_SeanCrysLensolCastle:
	dc.b	GenerationID_Sean
	dc.b	$EB
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	GenerationID_Crys
	dc.b	$EB
	dc.w	SceneID_AdanAronLensolCastle

	dc.b	$FF

	align 2

SceneUpdateScene_None15:
	dc.b	$FF

	align 2

SceneUpdateScene_Landen:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_LandenPrisonDoor
	dc.w	SceneID_LandenAfterWedding

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLanden

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_SariJoined
	dc.w	SceneID_AynLandenSariJoin

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLanden

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Landen

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Landen

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Landen

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Landen

	dc.b	$FF

	align 2

SceneUpdateScene_Yaata:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynYaata

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialYaata

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Yaata

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Yaata

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Yaata

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Yaata

	dc.b	$FF

	align 2

SceneUpdateScene_Ilan:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynIlan

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialIlan

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Ilan

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Ilan

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Ilan

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Ilan

	dc.b	$FF

	align 2

SceneUpdateScene_RyselFrozen:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_WeatherFixed
	dc.w	SceneID_RyselNormal

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynRysel

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Rysel

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Rysel

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Rysel

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Rysel

	dc.b	$FF

	align 2

SceneUpdateScene_Hazatak:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynHazatak

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialHazatak

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialHazatak

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialHazatak

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialHazatak

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialHazatak

	dc.b	$FF

	align 2

SceneUpdateScene_Agoe:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynAgoe

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Agoe

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Agoe

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Agoe

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Agoe

	dc.b	$FF

	align 2

SceneUpdateScene_Shusoran:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_LenaJoined
	dc.w	SceneID_ShusoranLenaJoin

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynShusoran

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	$FF

	align 2

SceneUpdateScene_Cille:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynCille

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynCilleEmpty

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_AynCilleEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynCilleEmpty

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynCilleEmpty

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynCilleEmpty

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynCilleEmpty

	dc.b	$FF

	align 2

SceneUpdateScene_None7:
	dc.b	$FF

	align 2

SceneUpdateScene_AynShusoran:
	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynShusoranEmpty

	dc.b	$FF

	align 2

SceneUpdateScene_AynCille:
	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynCilleEmpty

	dc.b	$FF

	align 2

SceneUpdateScene_AynTechna:
	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_Gen3Techna

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Techna

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Techna

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Techna

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Techna

	dc.b	$FF

	align 2

SceneUpdateScene_Endora:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Endora

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Endora

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Endora

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Endora

	dc.b	$FF

	align 2

SceneUpdateScene_Lensol:
	dc.b	GenerationID_Ayn
	dc.b	EventFlag_LensolGateOpen
	dc.w	SceneID_AynLensolGatesOpen

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Lensol

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Lensol

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Lensol

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Lensol

	dc.b	$FF

	align 2

SceneUpdateScene_None16:
	dc.b	$FF

	align 2

SceneUpdateScene_SouthDivisia:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3SouthDivisia

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3SouthDivisia

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3SouthDivisia

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3SouthDivisia

	dc.b	$FF

	align 2

SceneUpdateScene_Aerone:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3Aerone

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3Aerone

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3Aerone

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3Aerone

	dc.b	$FF

	align 2

SceneUpdateScene_None17:
	dc.b	$FF

	align 2

SceneUpdateScene_Lashute:
	dc.b	GenerationID_Sean
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_LashuteEvil

	dc.b	GenerationID_Crys
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_LashuteEvil

	dc.b	GenerationID_Adan
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_LashuteEvil

	dc.b	GenerationID_Aron
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_LashuteEvil

	dc.b	$FF

	align 2

SceneUpdateScene_Skyhaven:
	dc.b	GenerationID_Sean
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_SkyhavenNeiWeapons

	dc.b	GenerationID_Crys
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_SkyhavenNeiWeapons

	dc.b	GenerationID_Adan
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_SkyhavenNeiWeapons

	dc.b	GenerationID_Aron
	dc.b	EventFlag_NeiWeapons
	dc.w	SceneID_SkyhavenNeiWeapons

	dc.b	$FF

	align 2

SceneUpdateScene_None22:
	dc.b	$FF

	align 2

SceneUpdateScene_NorthDivisia:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3NorthDivisia

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3NorthDivisia

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3NorthDivisia

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3NorthDivisia

	dc.b	$FF

	align 2

SceneUpdateScene_None26:
	dc.b	$FF

	align 2

SceneUpdateScene_LandenAquaticaCave:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLandenAquaticaCave

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenAquaticaCave

	dc.b	$FF

	align 2

SceneUpdateScene_AquaticaAridiaCave:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynAquaticaAridiaCave

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialAquaticaAridiaCave

	dc.b	$FF

	align 2

SceneUpdateScene_LandenAridiaCave:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLandenAridiaCave

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	$FF

	align 2

SceneUpdateScene_None3:
	dc.b	$FF

	align 2

SceneUpdateScene_AridiaControlTower:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynControlTower

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialControlTower

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialControlTower

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialControlTower

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialControlTower

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialControlTower

	dc.b	$FF

	align 2

SceneUpdateScene_AridiaControlTower1F:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynControlTower1F

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialControlTower1F

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialControlTower1F

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialControlTower1F

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialControlTower1F

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialControlTower1F

	dc.b	$FF

	align 2

SceneUpdateScene_LandenDungeon:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynLandenDungeon

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_SariJoined
	dc.w	SceneID_AynLandenDungeonSariJoin

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenDungeon

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialLandenDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialLandenDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialLandenDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialLandenDungeon

	dc.b	$FF

	align 2

SceneUpdateScene_LandenIslandCave:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynIslandCave

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialIslandCave

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_NialIslandCave

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_NialIslandCave

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_NialIslandCave

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_NialIslandCave

	dc.b	$FF

	align 2

SceneUpdateScene_None8:
	dc.b	$FF

	align 2

SceneUpdateScene_WrenCave:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_Gen3WrenCave

	dc.b	GenerationID_Ayn
	dc.b	EventFlag_AynShusoranBoat2
	dc.w	SceneID_AynWrenCave

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialWrenCave

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3WrenCave

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3WrenCave

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3WrenCave

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3WrenCave

	dc.b	$FF

	align 2

SceneUpdateScene_None9:
	dc.b	$FF

	align 2

SceneUpdateScene_ShusoranDungeon:
	dc.b	GenerationID_Rhys
	dc.b	EventFlag_LenaJoined
	dc.w	SceneID_ShusoranDungeonLenaJoin

	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynShusoranDungeon

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynShusoranDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynShusoranDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynShusoranDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynShusoranDungeon

	dc.b	$FF

	align 2

SceneUpdateScene_CilleDungeon:
	dc.b	GenerationID_Ayn
	dc.b	$00
	dc.w	SceneID_AynCilleDungeon

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_AynCilleDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_AynCilleDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_AynCilleDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_AynCilleDungeon

	dc.b	$FF

	align 2

SceneUpdateScene_None10:
	dc.b	$FF

	align 2

SceneUpdateScene_LensolDungeon:
	dc.b	GenerationID_Ayn
	dc.b	EventFlag_TheaJoined
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_LensolDungeonTheaJoin

	dc.b	$FF

	align 2

SceneUpdateScene_None11:
	dc.b	$FF

	align 2

SceneUpdateScene_DivisiaDungeon:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3DivisiaDungeon

SceneUpdateScene_None12:
	dc.b	$FF

	align 2

SceneUpdateScene_RebelCave:
	dc.b	GenerationID_Nial
	dc.b	EventFlag_RebelCaveLuneGone
	dc.w	SceneID_RebelCaveRyanJoin

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3RebelCave

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3RebelCave

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3RebelCave

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3RebelCave

	dc.b	$FF

	align 2

SceneUpdateScene_None18:
	dc.b	$FF

	align 2

SceneUpdateScene_DahliaDungeon:
	dc.b	GenerationID_Nial
	dc.b	EventFlag_RebelCaveLuneGone
	dc.w	SceneID_NialDahliaDungeon

	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3DahliaDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3DahliaDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3DahliaDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3DahliaDungeon

	dc.b	$FF

	align 2

SceneUpdateScene_None19:
	dc.b	$FF

	align 2

SceneUpdateScene_AzuraDungeon:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3AzuraDungeon

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3AzuraDungeon

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3AzuraDungeon

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3AzuraDungeon

	dc.b	$FF

	align 2

SceneUpdateScene_AridiaDraconiaCave:
	dc.b	GenerationID_Sean
	dc.b	$00
	dc.w	SceneID_Gen3AridiaDraconiaCave

	dc.b	GenerationID_Crys
	dc.b	$00
	dc.w	SceneID_Gen3AridiaDraconiaCave

	dc.b	GenerationID_Adan
	dc.b	$00
	dc.w	SceneID_Gen3AridiaDraconiaCave

	dc.b	GenerationID_Aron
	dc.b	$00
	dc.w	SceneID_Gen3AridiaDraconiaCave

	dc.b	$FF

	align 2

SceneUpdateScene_None20:
	dc.b	$FF

	align 2

SceneUpdateScene_AynLandenAridiaCave:
	dc.b	GenerationID_Nial
	dc.b	$00
	dc.w	SceneID_NialLandenAridiaCave

	dc.b	$FF

	align 2

SceneUpdateScene_None21:
	dc.b	$FF

	align 2

SceneUpdateScene_SageIsle:
	dc.b	GenerationID_Sean
	dc.b	EventFlag_SirenSageIsle
	dc.w	SceneID_SageIsleSirenGone

	dc.b	GenerationID_Crys
	dc.b	EventFlag_SirenSageIsle
	dc.w	SceneID_SageIsleSirenGone

	dc.b	GenerationID_Adan
	dc.b	EventFlag_SirenSageIsle
	dc.w	SceneID_SageIsleSirenGone

	dc.b	GenerationID_Aron
	dc.b	EventFlag_SirenSageIsle
	dc.w	SceneID_SageIsleSirenGone

	dc.b	$FF

	align 2

SceneUpdateScene_None13:
	dc.b	$FF