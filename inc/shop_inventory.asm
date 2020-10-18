; =========================================
;	ShopsInventoryData:
; =========================================
; Shoplist index:	(*Limit 5 items per shop)
; 	00 - Landen Armor Shop
; 	01 - Landen Weapon Shop
; 	02 - Supply Shop - Landen, Yaata, Ilan, Rysel, Agoe, Hazatak
; 	03 - Yaata Weapon Shop
; 	04 - Yaata Armor Shop
; 	05 - Ilan Weapon Shop
; 	06 - Ilan Armor Shop
; 	07 - Rysel Weapon Shop
; 	08 - Rysel Armor Shop
; 	09 - Hazatak Weapon Shop
; 	0A - Hazatak Armor Shop
; 	0B - Agoe Weapon Shop
; 	0C - Agoe Armor Shop
; 	0D - Shusoran Weapon Shop
; 	0E - Shusoran Armor Shop
; 	0F - Supply Shop - Shusoran, Cille
; 	10 - Cille Armor Shop
; 	11 - Cille Weapon Shop
; 	12 - Techna Weapon Shop
; 	13 - Techna Armor Shop
; 	14 - Techna Supply Shop
; 	15 - Mystoke Weapon Shop
; 	16 - Mystoke Armor Shop
; 	17 - Mystoke Supply Shop
; 	18 - South Divisia Weapon Shop
; 	19 - South Divisia Armor Shop
; 	1A - Unused Weapon Shop
; 	1B - Unused Armor Shop
; 	1C - North Divisia and South Divisia Supply Shop
; 	1D - Aerone Weapon Shop
; 	1E - Aerone Armor Shop
; 	1F - Endora, Aerone and New Mota Supply Shop
; 	20 - New Mota Weapon Shop
; 	21 - New Mota Armor Shop
; 	22 - Lensol Supply Shop
; 	23 - Endora Weapon Shop
; 	24 - Endora Armor Shop
; 	25 - Lensol Weapon Shop
; 	26 - Lensol Armor Shop
; 	27 - Empty table (unused?)
; =========================================

; Landen Armor Shop
	dc.b	ItemID_HuntgHelm>>4
	dc.b	ItemID_Garment>>4
	dc.b	ItemID_HuntgArmr>>4
	dc.b	ItemID_Shield>>4
	dc.b	$FF

; Landen Weapon Shop
	dc.b	ItemID_Knife>>4
	dc.b	ItemID_ShortSwd>>4
	dc.b	ItemID_Needle>>4
	dc.b	ItemID_Claw>>4
	dc.b	$FF

; Supply Shop - Landen, Yaata, Ilan, Rysel, Agoe, Hazatak
	dc.b	ItemID_Monomate>>4
	dc.b	ItemID_Dimate>>4
	dc.b	ItemID_Antidote>>4
	dc.b	ItemID_Escapipe>>4
	dc.b	$FF

; Yaata Weapon Shop
	dc.b	ItemID_Knife>>4
	dc.b	ItemID_Claw>>4
	dc.b	ItemID_ShortSwd>>4
	dc.b	ItemID_HuntgKnf>>4
	dc.b	ItemID_HuntgNdl>>4

; Yaata Armor Shop
	dc.b	ItemID_Ribbon>>4
	dc.b	ItemID_HuntgHelm>>4
	dc.b	ItemID_HuntgArmr>>4
	dc.b	ItemID_Vest>>4
	dc.b	$FF

; Ilan Weapon Shop
	dc.b	ItemID_Knife>>4
	dc.b	ItemID_SteelNdl>>4
	dc.b	ItemID_ShortSwd>>4
	dc.b	ItemID_HuntgKnf>>4
	dc.b	ItemID_ForceSlr>>4

; Ilan Armor Shop
	dc.b	ItemID_Ribbon>>4
	dc.b	ItemID_Vest>>4
	dc.b	ItemID_Shield>>4
	dc.b	ItemID_Boots>>4
	dc.b	ItemID_ForceEmel>>4

; Rysel Weapon Shop
	dc.b	ItemID_ShortSwd>>4
	dc.b	ItemID_HuntgClw>>4
	dc.b	ItemID_HuntgStf>>4
	dc.b	ItemID_HuntgShot>>4
	dc.b	ItemID_Slicer>>4

; Rysel Armor Shop
	dc.b	ItemID_SteelArmr>>4
	dc.b	ItemID_HuntgVest>>4
	dc.b	ItemID_HuntgChst>>4
	dc.b	ItemID_ForceBoot>>4
	dc.b	ItemID_RoyalBoot>>4

; Hazatak Weapon Shop
	dc.b	ItemID_HuntgShot>>4
	dc.b	ItemID_Sword>>4
	dc.b	ItemID_LaserNdl>>4
	dc.b	ItemID_RoyalNdl>>4
	dc.b	$FF

; Hazatak Armor Shop
	dc.b	ItemID_Cape>>4
	dc.b	ItemID_Protector>>4
	dc.b	ItemID_Bandanna>>4
	dc.b	ItemID_HeadGear>>4
	dc.b	ItemID_SteelEmel>>4

; Agoe Weapon Shop
	dc.b	ItemID_Slicer>>4
	dc.b	ItemID_SteelKnf>>4
	dc.b	ItemID_HuntgNdl>>4
	dc.b	ItemID_LaserNdl>>4
	dc.b	$FF

; Agoe Armor Shop
	dc.b	ItemID_SteelVest>>4
	dc.b	ItemID_SteelHelm>>4
	dc.b	ItemID_SteelGear>>4
	dc.b	ItemID_SteelShld>>4
	dc.b	ItemID_Emel>>4

; Shusoran Weapon Shop
	dc.b	ItemID_CeramNdl>>4
	dc.b	ItemID_SteelSwd>>4
	dc.b	ItemID_SteelClw>>4
	dc.b	ItemID_SteelStf>>4
	dc.b	ItemID_CeramShot>>4

; Shusoran Armor Shop
	dc.b	ItemID_HuntgRibn>>4
	dc.b	ItemID_SteelChst>>4
	dc.b	ItemID_SteelPrtc>>4
	dc.b	ItemID_CeramArmr>>4
	dc.b	ItemID_SteelCape>>4

; Supply Shop - Shusoran, Cille
	dc.b	ItemID_Monomate>>4
	dc.b	ItemID_Dimate>>4
	dc.b	ItemID_Trimate>>4
	dc.b	ItemID_StarMist>>4
	dc.b	ItemID_MoonDew>>4

; Cille Armor Shop
	dc.b	ItemID_LaconArmr>>4
	dc.b	ItemID_ForceVest>>4
	dc.b	ItemID_ForcePrtc>>4
	dc.b	ItemID_RoyalVest>>4
	dc.b	ItemID_RoyalPrtc>>4

; Cille Weapon Shop
	dc.b	ItemID_PlanarSwd>>4
	dc.b	ItemID_RoyalBow>>4
	dc.b	ItemID_PlanarClw>>4
	dc.b	ItemID_PlanarSlr>>4
	dc.b	$FF

; Techna Weapon Shop
	dc.b	ItemID_LaconKnf>>4
	dc.b	ItemID_LaconClw>>4
	dc.b	ItemID_LaconSlr>>4
	dc.b	ItemID_LaconSwd>>4
	dc.b	ItemID_PulseCann>>4

; Techna Armor Shop
	dc.b	ItemID_LaconArmr>>4
	dc.b	ItemID_RoyalChst>>4
	dc.b	ItemID_SteelRobe>>4
	dc.b	ItemID_ForceVest>>4
	dc.b	ItemID_ForceShld>>4

; Techna Supply Shop
	dc.b	ItemID_Trimate>>4
	dc.b	ItemID_Antidote>>4
	dc.b	ItemID_Escapipe>>4
	dc.b	$FF
	dc.b	$FF

; Mystoke Weapon Shop
	dc.b	ItemID_ForceKnf>>4
	dc.b	ItemID_LaserBow>>4
	dc.b	ItemID_Cannon>>4
	dc.b	ItemID_LaconStf>>4
	dc.b	ItemID_LaconNdl>>4

; Mystoke Armor Shop
	dc.b	ItemID_PlanarArm>>4
	dc.b	ItemID_RoyalRobe>>4
	dc.b	ItemID_RoyalFib>>4
	dc.b	ItemID_RoyalVest>>4
	dc.b	ItemID_RoyalPrtc>>4

; Mystoke Supply Shop
	dc.b	ItemID_Monomate>>4
	dc.b	ItemID_Dimate>>4
	dc.b	ItemID_Trimate>>4
	dc.b	ItemID_Antidote>>4
	dc.b	$FF

; South Divisia Weapon Shop
	dc.b	ItemID_CeramKnf>>4
	dc.b	ItemID_CeramClw>>4
	dc.b	ItemID_LaconShot>>4
	dc.b	ItemID_LaserStf>>4
	dc.b	ItemID_ForceNdl>>4

; South Divisia Armor Shop
	dc.b	ItemID_CeramVest>>4
	dc.b	ItemID_CeramPrtc>>4
	dc.b	ItemID_LaconCape>>4
	dc.b	ItemID_Fiblira>>4
	dc.b	ItemID_ForceArmr>>4

; Unused Weapon Shop
	dc.b	ItemID_LaconKnf>>4
	dc.b	ItemID_LaconClw>>4
	dc.b	ItemID_LaconSwd>>4
	dc.b	ItemID_ForceBow>>4
	dc.b	ItemID_PulseCann>>4

; Unused Armor Shop
	dc.b	ItemID_PlanarArm>>4
	dc.b	ItemID_RoyalRobe>>4
	dc.b	ItemID_RoyalVest>>4
	dc.b	ItemID_RoyalBoot>>4
	dc.b	ItemID_RoyalFib>>4

; North Divisia and South Divisia Supply Shop
	dc.b	ItemID_Antidote>>4
	dc.b	ItemID_Monomate>>4
	dc.b	ItemID_Dimate>>4
	dc.b	ItemID_Trimate>>4
	dc.b	$FF

; Aerone Weapon Shop
	dc.b	ItemID_LaconKnf>>4
	dc.b	ItemID_LaconClw>>4
	dc.b	ItemID_LaconSwd>>4
	dc.b	ItemID_ForceBow>>4
	dc.b	ItemID_PulseCann>>4

; Aerone Armor Shop
	dc.b	ItemID_LaconArmr>>4
	dc.b	ItemID_RoyalChst>>4
	dc.b	ItemID_SteelRobe>>4
	dc.b	ItemID_ForceVest>>4
	dc.b	ItemID_ForceShld>>4

; Endora, Aerone and New Mota Supply Shop
	dc.b	ItemID_Monomate>>4
	dc.b	ItemID_Dimate>>4
	dc.b	ItemID_Trimate>>4
	dc.b	ItemID_Antidote>>4
	dc.b	$FF

; New Mota Weapon Shop
	dc.b	ItemID_PlanarSlr>>4
	dc.b	ItemID_PlanarClw>>4
	dc.b	ItemID_RoyalBow>>4
	dc.b	ItemID_PlanarSwd>>4
	dc.b	ItemID_PulseVlcn>>4

; New Mota Armor Shop
	dc.b	ItemID_RoyalArmr>>4
	dc.b	ItemID_LaconRobe>>4
	dc.b	ItemID_LaconFib>>4
	dc.b	ItemID_LaconVest>>4
	dc.b	ItemID_LaconPrtc>>4

; Lensol Supply Shop
	dc.b	ItemID_Trimate>>4
	dc.b	ItemID_Antidote>>4
	dc.b	$FF
	dc.b	$FF
	dc.b	$FF

; Endora Weapon Shop
	dc.b	ItemID_LaserSwd>>4
	dc.b	ItemID_LaserKnf>>4
	dc.b	ItemID_LaserClw>>4
	dc.b	ItemID_Cannon>>4
	dc.b	ItemID_LaserSlr>>4

; Endora Armor Shop
	dc.b	ItemID_LaconChst>>4
	dc.b	ItemID_CeramShld>>4
	dc.b	ItemID_CeramEmel>>4
	dc.b	ItemID_CeramGear>>4
	dc.b	ItemID_RoyalBand>>4

; Lensol Weapon Shop
	dc.b	ItemID_CeramSwd>>4
	dc.b	ItemID_CeramKnf>>4
	dc.b	ItemID_CeramClw>>4
	dc.b	ItemID_LaconShot>>4
	dc.b	ItemID_CeramSlr>>4

; Lensol Armor Shop
	dc.b	ItemID_ForceArmr>>4
	dc.b	ItemID_CeramVest>>4
	dc.b	ItemID_CeramPrtc>>4
	dc.b	ItemID_ForceEmel>>4
	dc.b	ItemID_Robe>>4

	dc.b	$00
	dc.b	$00
	dc.b	$00
	dc.b	$00
	dc.b	$00