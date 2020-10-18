; ======================================================================
; Data and input for the demos
;
; A pair of byte is read each frame to determine what to do
;
; Byte 1 = if value is 0, then the next byte represents the index of the DemoScriptOffsets
; 			table; when not 0, it's the duration that the input determined by the value of next
;			byte will take
;
; Byte 2 = if preceding byte is 0, then it's the index of the DemoScriptOffsets table, otherwise
;			it's the input whose duration depends on the value of the 1st byte
; ======================================================================

; =====================================
Demo_RhysMarriage:
	dc.b	$18, $00
	dc.b	$0C, ButtonUp_Mask
	dc.b	$10, $00
	dc.b	$00, $00
	dc.b	$02, $00
	dc.b	$12, ButtonDown_Mask
	dc.b	$11, ButtonRight_Mask
	dc.b	$11, ButtonRight_Mask
	dc.b	$0C, ButtonDown_Mask
	dc.b	$0F, ButtonRight_Mask
	dc.b	$0F, ButtonRight_Mask
	dc.b	$05, ButtonUp_Mask
	dc.b	$0E, ButtonUp_Mask
	dc.b	$04, ButtonRight_Mask
	dc.b	$0B, ButtonUp_Mask
	dc.b	$08, $00
	dc.b	$01, ButtonDown_Mask
	dc.b	$02, $00
	dc.b	$00, $02
	dc.b	$0E, $00
	dc.b	$00, $03
	dc.b	$08, $00
	dc.b	$04, ButtonLeft_Mask
	dc.b	$01, $00
	dc.b	$00, $04
	dc.b	$01, $00
	dc.b	$04, ButtonRight_Mask
	dc.b	$01, $00
	dc.b	$00, $05
	dc.b	$04, ButtonLeft_Mask
	dc.b	$01, ButtonDown_Mask
	dc.b	$01, $00
	dc.b	$00, $06
	dc.b	$08, $00
	dc.b	$00, $07
	dc.b	$10, $00
	dc.b	$00, $08
	dc.b	$07, ButtonDown_Mask
	dc.b	$01, $00
	dc.b	$00, $09
	dc.b	$01, $00
	dc.b	$0A, ButtonDown_Mask
	dc.b	$01, $00
	dc.b	$00, $0A
	dc.b	$01, $00
	dc.b	$0B, ButtonDown_Mask
	dc.b	$10, ButtonRight_Mask
	dc.b	$06, ButtonDown_Mask
; =====================================

; =====================================
Demo_LandenWalkToPrison:
	dc.b	$04, $00
	dc.b	$0A, ButtonDown_Mask
	dc.b	$20, ButtonLeft_Mask
	dc.b	$0C, ButtonUp_Mask
	dc.b	$FF
; =====================================
	even
; =====================================
Demo_RhysPrisonEscape:
	dc.b	$06, $00
	dc.b	$06, ButtonDown_Mask
	dc.b	$04, $00
	dc.b	$18, ButtonLeft_Mask
	dc.b	$14, ButtonLeft_Mask
	dc.b	$01, $00
	dc.b	$00, $01
	dc.b	$01, $00
	dc.b	$10, ButtonLeft_Mask
	dc.b	$18, ButtonDown_Mask
	dc.b	$0F, ButtonDown_Mask
	dc.b	$02, $00
	dc.b	$FF
; =====================================
	align 2
; =====================================
Demo_RhysEscapeTechShop:
	dc.b	$04, $00
	dc.b	$04, ButtonUp_Mask
	dc.b	$0F, ButtonLeft_Mask
	dc.b	$0C, ButtonDown_Mask
	dc.b	$03, ButtonRight_Mask
	dc.b	$10, ButtonDown_Mask
	dc.b	$FF
; =====================================
	align 2
; =====================================
Demo_AynIntro:
	dc.b	$18, $00
	dc.b	$00, $0B
	dc.b	$18, $00
	dc.b	$00, $0C
	dc.b	$18, $00
	dc.b	$00, $0D
	dc.b	$18, $00
	dc.b	$04, ButtonDown_Mask
	dc.b	$06, ButtonLeft_Mask
	dc.b	$01, ButtonUp_Mask
	dc.b	$04, $00
	dc.b	$FF
; =====================================
	even
; =====================================
	dc.b	$04, $00
	dc.b	$01, ButtonDown_Mask
	dc.b	$06, ButtonLeft_Mask
	dc.b	$01, ButtonUp_Mask
	dc.b	$04, $00
	dc.b	$FF
; =====================================
	even
; =====================================
Demo_NialIntro:
	dc.b	$18, $00
	dc.b	$00, $0E
	dc.b	$18, $00
	dc.b	$00, $0F
	dc.b	$18, $00
	dc.b	$04, ButtonDown_Mask
	dc.b	$06, ButtonLeft_Mask
	dc.b	$01, ButtonUp_Mask
	dc.b	$04, $00
	dc.b	$FF
; =====================================
	even
; =====================================
	dc.b	$04, $00
	dc.b	$01, ButtonDown_Mask
	dc.b	$06, ButtonLeft_Mask
	dc.b	$01, ButtonUp_Mask
	dc.b	$04, $00
	dc.b	$FF
; =====================================
	even
; =====================================
loc_3EDA6:
	dc.b	$04, $00
	dc.b	$05, ButtonUp_Mask
	dc.b	$18, ButtonLeft_Mask
	dc.b	$10, ButtonUp_Mask
	dc.b	$04, $00
	dc.b	$FF
; =====================================