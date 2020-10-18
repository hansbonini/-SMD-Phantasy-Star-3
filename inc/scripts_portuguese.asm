; ==========================================================
; Main Game Script Area
;
; The text block to load and display is determined by the value in the "script_offset" RAM location.
; The offset is simply the GameScript location + the value present in the "script_offset".
;
; Here's some explanation about what data represents here:
;
; Bytes 1-2 = This is another offset value relative to the GameScript address and it's used when a particular event is set and the offset for
;			  the event is determined by the 3rd byte below this script offset
; Byte 3 = This is the offset relative to the "event_flags" RAM location and, if the byte at that location is set, then the offset specified in the first
;		   2 bytes is loaded and that one will be used and the process starts all over. If you want to use the current text block, then set it to $FF
; Byte 4 = This byte will set an event flag at the offset determined by this byte relative to the "event_flags" RAM location. If no event is triggered by
;		   this text, then it's set to $00
;
; The following data is the actual text. Here's some characters that manipulate the text:
;
; $F8 = Moves the following text data to a new line. Only used once per text block
; $EC = Clears the current text and displays the following text data
; $FC = End of text
;
; Creating new dialogues for existing characters is very easy. You simply need to know the flag for a particular event and then decide if to move to a new
; text offset. So let's take an existing block as an example:
;
;loc_27894:
;	dc.w	loc_278F2-GameScript
;	dc.b	EventFlag_MieuJoined, EventFlag_MieuTrigger
;	dc.b	"I saw one of Laya's"
;	dc.b	$F8
;	dc.b	"people at a lake by the"
;	dc.b	$EC
;	dc.b	"northeastern forest. The"
;	dc.b	$EC
;	dc.b	"woman never blinked!"
;	dc.b	$FC
;
; So after reaching this text section, the code stores the text offset in case a flag event is set. In this case the byte is $09, which means it checks for the
; event flag at location "event_flags+9"; if the event is set ($FF), then it loads the new offset and goes to loc_278F2 in this case.
; Then the next byte which is another event flag offset will be used to set another event, in this case it will set the byte at location "event_flags+8".
; This text block makes Mieu appear on the world map, basically. Then when you get Mieu, the flag at location "event_flags+9" will be set, thus this NPC will say
; a different dialogue... The one loaded in the first 2 bytes.
;
; You can scroll through this section and get a general idea of the different event flags; it should be relatively easy to guess what some event flags do if you
; know the game fairly well. In any case you can always play using a RAM viewer and track the values in RAM location "$FFFFBF00" through "$FFFFBFFF".
; ==========================================================

loc_25F0A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nothing unusual here."
	dc.b	$FC

	even

loc_25F24:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The legends of Landen,"
	dc.b	$F8
	dc.b	"your homeland, tell of"
	dc.b	$EC
	dc.b	"world-sweeping wars"
	dc.b	$EC
	dc.b	"fought 1,000 years ago."
	dc.b	$EC
	dc.b	"Brave Orakio sought to"
	dc.b	$EC
	dc.b	"foil the evil schemes of"
	dc.b	$EC
	dc.b	"the dark witch Laya and"
	dc.b	$EC
	dc.b	"her hordes of monsters."
	dc.b	$EC
	dc.b	"In the final battle, all"
	dc.b	$EC
	dc.b	"combatants were killed,"
	dc.b	$EC
	dc.b	"though Orakio and Laya's"
	dc.b	$EC
	dc.b	"bodies were never found."
	dc.b	$EC
	dc.b	"The passageways between"
	dc.b	$EC
	dc.b	"the Layan worlds and the"
	dc.b	$EC
	dc.b	"Orakian worlds were"
	dc.b	$EC
	dc.b	"sealed. In time, people"
	dc.b	$EC
	dc.b	"forgot there were other"
	dc.b	$EC
	dc.b	"worlds besides Landen."
	dc.b	$EC
	dc.b	"Two months ago, a young"
	dc.b	$EC
	dc.b	"woman washed up on the"
	dc.b	$EC
	dc.b	"shores of Landen. The"
	dc.b	$EC
	dc.b	"woman remembered nothing"
	dc.b	$EC
	dc.b	"of her life prior to"
	dc.b	$EC
	dc.b	"waking up on the beach."
	dc.b	$EC
	dc.b	"This seemingly minor"
	dc.b	$EC
	dc.b	"event sets an epic"
	dc.b	$EC
	dc.b	"adventure in motion...."
	dc.b	$EC
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"A great day for a"
	dc.b	$F8
	dc.b	"wedding, Prince Rhys!"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"May Orakio's power"
	dc.b	$F8
	dc.b	"protect you from Laya."
	dc.b	$FC

	even

loc_261F8:
	dc.w	0
	dc.b	$FF, $00

	even

loc_261FC:
	dc.w	0
	dc.b	$FF, $00

	even

loc_26200:
	dc.w	0
	dc.b	$FF, $00

	even

loc_26204:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Layans should not marry"
	dc.b	$F8
	dc.b	"despicable Orakians!"
	dc.b	$FC

	align 2

loc_26236:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The people of Cille are"
	dc.b	$F8
	dc.b	"insulted that you want"
	dc.b	$EC
	dc.b	"the hand of Maia, our"
	dc.b	$EC
	dc.b	"fair princess! Begone!"
	dc.b	$FC

	even

loc_26296:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Luckily for you, Laya's"
	dc.b	$F8
	dc.b	"Law forbids killing."
	dc.b	$EC
	dc.b	"\IKill no living thing,\I"
	dc.b	$EC
	dc.b	"was Laya's last message."
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Hurray!"
	dc.b	$F8
	dc.b	$FC

	align 2

loc_26306:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Please stay on the other"
	dc.b	$F8
	dc.b	"side of the counter."
	dc.b	$FC

	even

loc_26338:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Maia o awaits in the castle, "
	dc.b	$F8
	dc.b	"Prince Rhys!"
	dc.b	$FC

	even

loc_26364:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You may not pass! Your"
	dc.b	$F8
	dc.b	"doom awaits, Orakians!"
	dc.b	$FC

	even

loc_26396:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I, Rhys, do take thee,"
	dc.b	$F8
	dc.b	"Maia, to be my...."
	dc.b	$FC

	even

loc_263C4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Filthy Orakians! Maia"
	dc.b	$F8
	dc.b	"will not be yours!"
	dc.b	$FC

	even

loc_263F2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"No! Return her, you foul"
	dc.b	$F8
	dc.b	"dragon-spawn of Laya!"
	dc.b	$FC

	even

loc_26426:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I'll find Maia if I have"
	dc.b	$F8
	dc.b	"to search forever!"
	dc.b	$FC

	even

loc_26456:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \II'll take the army"
	dc.b	$F8
	dc.b	"to destroy Laya's clan!\I"
	dc.b	$FC

	even

loc_2648C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KING \IDon't be a fool!"
	dc.b	$F8
	dc.b	"No one has seen a Layan"
	dc.b	$EC
	dc.b	"for over 1,000 years!"
	dc.b	$EC
	dc.b	"Starting a war is not a"
	dc.b	$EC
	dc.b	"rational thing to do."
	dc.b	$EC
	dc.b	"Cool off in the dungeon"
	dc.b	$EC
	dc.b	"for a while!\I"
	dc.b	$EC
	dc.b	$FC

	even

loc_2652A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You can't stop me from"
	dc.b	$F8
	dc.b	"going after her, father!"
	dc.b	$FC

	even

loc_2655E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I'll find her again, and"
	dc.b	$F8
	dc.b	"I'll bring her back!"
	dc.b	$FC

	even

loc_26590:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I swear it!"
	dc.b	$F8
	dc.b	$FC

	align 2

loc_265A2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I'm Lena. I'll help you"
	dc.b	$F8
	dc.b	"escape. Follow me."
	dc.b	$FC

	align 2

loc_265D2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Arm yourself well and go"
	dc.b	$F8
	dc.b	"find Maia!"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00

	even

loc_265FE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I'm the king of Cille."
	dc.b	$F8
	dc.b	"I'll show you how we"
	dc.b	$EC
	dc.b	"handle Orakian spies in"
	dc.b	$EC
	dc.b	"my country!"
	dc.b	$FC

	even

loc_26652:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I yield to you, Rhys!"
	dc.b	$F8
	dc.b	"You are mighty indeed."
	dc.b	$EC
	dc.b	"Perhaps Lyle, my nephew,"
	dc.b	$EC
	dc.b	"was right about you."
	dc.b	$EC
	dc.b	"You must now choose"
	dc.b	$EC
	dc.b	"between Maia and Lena."
	dc.b	$EC
	dc.b	"Wed Maia and you shall"
	dc.b	$EC
	dc.b	"become king of Cille."
	dc.b	$EC
	dc.b	"Marry Lena and you shall"
	dc.b	$EC
	dc.b	"be king of Landen and"
	dc.b	$EC
	dc.b	"neighboring Satera."
	dc.b	$EC
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Rhys, what are we going"
	dc.b	$F8
	dc.b	"to do with you?"
	dc.b	$FC

	even

loc_2677A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"OLD MAN \ISee the palace"
	dc.b	$F8
	dc.b	"down there in the muck?"
	dc.b	$EC
	dc.b	"Our oldest legend says"
	dc.b	$EC
	dc.b	"the evil Dark Force is"
	dc.b	$EC
	dc.b	"trapped there by the"
	dc.b	$EC
	dc.b	"sword of Orakio!\I"
	dc.b	$FC

	even

loc_26804:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \INo, I'm not one of"
	dc.b	$F8
	dc.b	"Laya's people, Prince."
	dc.b	$EC
	dc.b	"I am a combat cyborg,"
	dc.b	$EC
	dc.b	"designation Mieu type."
	dc.b	$EC
	dc.b	"I have been waiting for"
	dc.b	$EC
	dc.b	"1,000 years for you."
	dc.b	$EC
	dc.b	"Only a descendant of"
	dc.b	$EC
	dc.b	"Orakio can command me.\I"
	dc.b	$EC
	dc.b	"Mieu joins your party."
	dc.b	$EC
	dc.b	$FC

	align 2

loc_268D8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LYLE \IHi! I'm Lyle. Yes,"
	dc.b	$F8
	dc.b	"I do have the Sapphire."
	dc.b	$EC
	dc.b	"I don't really need it,"
	dc.b	$EC
	dc.b	"so you're welcome to it."
	dc.b	$EC
	dc.b	"I'd like to join you on"
	dc.b	$EC
	dc.b	"your adventures, but I"
	dc.b	$EC
	dc.b	"have other things to do"
	dc.b	$EC
	dc.b	"now. See you around!\I"
	dc.b	$FC

	align 2

loc_2699C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LYLE \IRemember me, Rhys?"
	dc.b	$F8
	dc.b	"Lyle, with the Sapphire?"
	dc.b	$EC
	dc.b	"I need your help to thaw"
	dc.b	$EC
	dc.b	"out my whole world."
	dc.b	$EC
	dc.b	"People are dying from"
	dc.b	$EC
	dc.b	"cold and starvation!"
	dc.b	$EC
	dc.b	"Farther in here are the"
	dc.b	$EC
	dc.b	"weather system controls."
	dc.b	$EC
	dc.b	"Your Wren cyborg can fix"
	dc.b	$EC
	dc.b	"it up in no time at all."
	dc.b	$EC
	dc.b	"In return, I'll join"
	dc.b	$EC
	dc.b	"your party to help out.\I"
	dc.b	$EC
	dc.b	"Lyle joins your party."
	dc.b	$EC
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIUN \IOrakio? No, you"
	dc.b	$F8
	dc.b	"don't have his sword."
	dc.b	$EC
	dc.b	"Why has Orakio kept me"
	dc.b	$EC
	dc.b	"waiting for so long?\I"
	dc.b	$FC

	even

loc_26B32:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"WREN \II'm a Wren-type"
	dc.b	$F8
	dc.b	"cyborg, programmed"
	dc.b	$EC
	dc.b	"to serve you."
	dc.b	$EC
	dc.b	$EC
	dc.b	"I'm a technical systems"
	dc.b	$EC
	dc.b	"and combat specialist.\I"
	dc.b	$EC
	dc.b	"Wren joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_26BB6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Now it's time to see you"
	dc.b	$F8
	dc.b	"really fight, Rhys!"
	dc.b	$FC

	align 2

loc_26BE8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You're a lot tougher"
	dc.b	$F8
	dc.b	"than I thought, Rhys."
	dc.b	$EC
	dc.b	"Someone wants to speak"
	dc.b	$EC
	dc.b	"with you, by the way."
	dc.b	$FC

	even

loc_26C44:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \IIt's her! How did"
	dc.b	$F8
	dc.b	"she get here?\I"
	dc.b	$EC
	dc.b	"LYLE \II found her.\I"
	dc.b	$EC
	dc.b	" "
	dc.b	$EC
	dc.b	"RHYS \IPlease help me"
	dc.b	$EC
	dc.b	"take her away, Lyle!\I"
	dc.b	$EC
	dc.b	"LYLE \IIf you want her"
	dc.b	$EC
	dc.b	"back, fight for her!\I"
	dc.b	$EC
	dc.b	"LYLE \II have to leave"
	dc.b	$EC
	dc.b	"you now, Prince Rhys."
	dc.b	$EC
	dc.b	"I'll explain why later,"
	dc.b	$EC
	dc.b	"if things work out.\I"
	dc.b	$FC

	even

loc_26D36:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LENA \IYou've come a long"
	dc.b	$F8
	dc.b	"way since we last met."
	dc.b	$EC
	dc.b	"Before we get Maia, we"
	dc.b	$EC
	dc.b	"must backtrack a bit."
	dc.b	$EC
	dc.b	"Return to Aridia and put"
	dc.b	$EC
	dc.b	"my Moon Stone and Lyle's"
	dc.b	$EC
	dc.b	"Moon Tear into the sat-"
	dc.b	$EC
	dc.b	"ellite control system."
	dc.b	$EC
	dc.b	"That will bring the moon"
	dc.b	$EC
	dc.b	"back to its proper place"
	dc.b	$EC
	dc.b	"and open a land bridge"
	dc.b	$EC
	dc.b	"from the rear gate of"
	dc.b	$EC
	dc.b	"this castle to where"
	dc.b	$EC
	dc.b	"Maia is being held."
	dc.b	$EC
	dc.b	"Let's go rescue Maia!\I"
	dc.b	$EC
	dc.b	$FC

	even

loc_26E98:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"..."
	dc.b	$F8
	dc.b	$FC

	align 2

	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Congratulations, Prince"
	dc.b	$F8
	dc.b	"Rhys! We wish you well."
	dc.b	$FC

	even

loc_26ED6:
	dc.w	loc_25F0A-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"I am honored that you"
	dc.b	$F8
	dc.b	"want to marry me, Rhys."
	dc.b	$EC
	dc.b	"Perhaps someday we will"
	dc.b	$EC
	dc.b	"find out where I'm from"
	dc.b	$EC
	dc.b	"and who I am!"
	dc.b	$EC
	dc.b	$FC

	even

	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00

	even

	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"May Orakio bless this"
	dc.b	$F8
	dc.b	"happy couple!"
	dc.b	$FC

	even

	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Three cheers for the"
	dc.b	$F8
	dc.b	"happy couple."
	dc.b	$FC

	even

; -------------------------------------------------
loc_26F9C:
	dc.w	loc_26FB2-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Congratulations!"
	dc.b	$F8
	dc.b	$FC

	even

loc_26FB2:
	dc.w	loc_27006-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Your monitor is a handy"
	dc.b	$F8
	dc.b	"device. Use it to find"
	dc.b	$EC
	dc.b	"out where you are in the"
	dc.b	$EC
	dc.b	"world."
	dc.b	$FC

	align 2

loc_27006:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Maia seems very nice,"
	dc.b	$F8
	dc.b	"but who really knows?"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27036:
	dc.w	loc_2706C-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Trust in Orakio! He can"
	dc.b	$F8
	dc.b	"protect you from Layans."
	dc.b	$FC

	align 2

loc_2706C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"To the south lies Yaata,"
	dc.b	$F8
	dc.b	"a port city."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27096:
	dc.w	loc_270BE-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Maia will be a fine"
	dc.b	$F8
	dc.b	"queen for you!"
	dc.b	$FC

	even

loc_270BE:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Machines used to fly out"
	dc.b	$F8
	dc.b	"of the ruins near here."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_270F4:
	dc.w	loc_27126-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Beware, Prince Rhys!"
	dc.b	$F8
	dc.b	"Layan spies lurk about."
	dc.b	$FC

	align 2

loc_27126:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"The Sapphire lets you"
	dc.b	$F8
	dc.b	"enter the eastern cave."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27158:
	dc.w	loc_2718A-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"It's about time you got"
	dc.b	$F8
	dc.b	"married, Prince Rhys!"
	dc.b	$FC

	even

loc_2718A:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Arm yourself well, for"
	dc.b	$F8
	dc.b	"your foes are deadly!"
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_271BC:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Maia is a mystery to"
	dc.b	$F8
	dc.b	"everyone in Landen."
	dc.b	$FC

	align 2

loc_271EA:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Have you found the"
	dc.b	$F8
	dc.b	"princess yet, Prince?"
	dc.b	$FC

	align 2

loc_27218:
	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"No time to chat, Prince."
	dc.b	$F8
	dc.b	"I really need a nap."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2724A:
	dc.w	loc_27270-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"May Orakio protect you"
	dc.b	$F8
	dc.b	"from Laya!"
	dc.b	$FC

	even

loc_27270:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"I hear that Laya's"
	dc.b	$F8
	dc.b	"monsters are everywhere!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_272A0:
	dc.w	loc_272D2-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Congratulations, Prince!"
	dc.b	$F8
	dc.b	"You're a lucky guy!"
	dc.b	$FC

	even

loc_272D2:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"A monster stole the"
	dc.b	$F8
	dc.b	"Sapphire and flew south,"
	dc.b	$EC
	dc.b	"toward the island. Some"
	dc.b	$EC
	dc.b	"say it was a man...."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27330:
	dc.w	loc_27362-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"May Orakio watch over"
	dc.b	$F8
	dc.b	"and guide you, Prince."
	dc.b	$FC

	even

loc_27362:
	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Remember Orakio's Law:"
	dc.b	$F8
	dc.b	"\IKill no living thing!\I"
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_27396:
	dc.w	loc_273BE-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Danger is everywhere,   "
	dc.b	$F8
	dc.b	"Prince Rhys!            "
	dc.b	$FC

	even

loc_273BE:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Make them pay for this,"
	dc.b	$F8
	dc.b	"Prince!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_273E2:
	dc.w	loc_2740A-GameScript
	dc.b	EventFlag_PrisonBreakout, $00
	dc.b	"Are you staying long,"
	dc.b	$F8
	dc.b	"Prince Rhys?"
	dc.b	$FC

	even

loc_2740A:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"The royal family is in"
	dc.b	$F8
	dc.b	"mourning."
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_27430:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"When the prince leaves"
	dc.b	$F8
	dc.b	"his castle, the moons"
	dc.b	$EC
	dc.b	"will drift closer again."
	dc.b	$EC
	dc.b	"Worlds shall burn if the"
	dc.b	$EC
	dc.b	"prince's will falters."
	dc.b	$EC
	dc.b	"The prince's offspring"
	dc.b	$EC
	dc.b	"will wander afar, until"
	dc.b	$EC
	dc.b	"the end of the worlds or"
	dc.b	$EC
	dc.b	"the rejection of evil."
	dc.b	$FC

	even

loc_2750A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"May Orakio protect our"
	dc.b	$F8
	dc.b	"blessed town of Yaata!"
	dc.b	$FC

	even

loc_2753C:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"The man by the fountain"
	dc.b	$F8
	dc.b	"owns a boat, but he will"
	dc.b	$EC
	dc.b	"not sail unless he has a"
	dc.b	$EC
	dc.b	"cyborg on board."
	dc.b	$FC

	even

; -------------------------------------------------
loc_2759C:
	dc.w	loc_275FE-GameScript
	dc.b	EventFlag_MieuJoined, $00
	dc.b	"I am a superstitious old"
	dc.b	$F8
	dc.b	"man, good Prince Rhys."
	dc.b	$EC
	dc.b	"Cyborgs are good luck"
	dc.b	$EC
	dc.b	"charms, if you ask me."
	dc.b	$FC

	align 2

loc_275FE:
	dc.w	loc_2765E-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Welcome aboard! There's"
	dc.b	$F8
	dc.b	"someone holed up in the"
	dc.b	$EC
	dc.b	"cave on the island. I"
	dc.b	$EC
	dc.b	"hear he stole a gem."
	dc.b	$FC

	align 2

loc_2765E:
	dc.w	0
	dc.b	$FF, $00

	even

	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Orakio destroyed Laya's"
	dc.b	$F8
	dc.b	"army 1,000 years ago."
	dc.b	$FC
; -------------------------------------------------
	even

loc_27694:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya's people have very"
	dc.b	$F8
	dc.b	"strange powers, I hear."
	dc.b	$FC

	even

loc_276C8:
	dc.w	loc_26200-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"I think Laya's people"
	dc.b	$F8
	dc.b	"all died long ago."
	dc.b	$FC

	even

loc_276F6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"They say Layans can"
	dc.b	$F8
	dc.b	"create monsters."
	dc.b	$FC

	align 2

loc_27720:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Ages ago, people could"
	dc.b	$F8
	dc.b	"fly, or so the old tales"
	dc.b	$EC
	dc.b	"would have us believe."
	dc.b	$EC
	dc.b	"I doubt they really did."
	dc.b	$FC

	even

loc_27784:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Walk across the bridge"
	dc.b	$F8
	dc.b	"to reach Ilan."
	dc.b	$FC

	even

loc_277AE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to our town of"
	dc.b	$F8
	dc.b	"Ilan, traveler!"
	dc.b	$FC

	even

; -------------------------------------------------
loc_277DA:
	dc.w	loc_2783A-GameScript
	dc.b	EventFlag_MieuJoined, $00
	dc.b	"The old man won't let me"
	dc.b	$F8
	dc.b	"on his boat unless I"
	dc.b	$EC
	dc.b	"have a cyborg. Now where"
	dc.b	$EC
	dc.b	"can I find a cyborg?"
	dc.b	$FC

	even

loc_2783A:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"I saw a dragon carry a"
	dc.b	$F8
	dc.b	"woman toward the east."
	dc.b	$EC
	dc.b	"They entered a cave and"
	dc.b	$EC
	dc.b	"never came out."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27894:
	dc.w	loc_278F2-GameScript
	dc.b	EventFlag_MieuJoined, EventFlag_MieuTrigger
	dc.b	"I saw one of Laya's"
	dc.b	$F8
	dc.b	"people at a lake by the"
	dc.b	$EC
	dc.b	"northeastern forest. The"
	dc.b	$EC
	dc.b	"woman never blinked!"
	dc.b	$FC

	even

loc_278F2:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"You sure look like an"
	dc.b	$F8
	dc.b	"evil Layan to me."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2791E:
	dc.w	loc_2794A-GameScript
	dc.b	EventFlag_MieuJoined, $00
	dc.b	"Orakio destroyed Laya"
	dc.b	$F8
	dc.b	"1,000 years ago."
	dc.b	$FC

	align 2

loc_2794A:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"She looks mighty odd to"
	dc.b	$F8
	dc.b	"me, I'll tell you."
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_2797A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This is Rysel, stranger,"
	dc.b	$F8
	dc.b	"a small fishing village."
	dc.b	$FC

	even

loc_279B0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We minstrels know much"
	dc.b	$F8
	dc.b	"of the ancient legends."
	dc.b	$EC
	dc.b	"My favorite is one that"
	dc.b	$EC
	dc.b	"tells of our people"
	dc.b	$EC
	dc.b	"fleeing a terribly evil"
	dc.b	$EC
	dc.b	"thing called Dark Force!"
	dc.b	$EC
	dc.b	"The legend says we are"
	dc.b	$EC
	dc.b	"the last survivors of a"
	dc.b	$EC
	dc.b	"race that sailed between"
	dc.b	$EC
	dc.b	"the stars."
	dc.b	$FC

	even

loc_27A94:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Orakio's fortresses once"
	dc.b	$F8
	dc.b	"stood south of here."
	dc.b	$EC
	dc.b	"Legends mention a hidden"
	dc.b	$EC
	dc.b	"gate near their ruins."
	dc.b	$FC

	even

; -------------------------------------------------
loc_27AF6:
	dc.w	loc_27B2C-GameScript
	dc.b	EventFlag_WeatherFixed, $00
	dc.b	"We're all suffering from"
	dc.b	$F8
	dc.b	"hunger and severe cold."
	dc.b	$FC

	align 2

loc_27B2C:
	dc.w	loc_261F8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Some people across the"
	dc.b	$F8
	dc.b	"sea worship Laya."
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_27B5A:
	dc.w	loc_27BE0-GameScript
	dc.b	EventFlag_WeatherFixed, $00
	dc.b	"The deadly winter came"
	dc.b	$F8
	dc.b	"upon us without warning."
	dc.b	$EC
	dc.b	"We can't fish in a sea"
	dc.b	$EC
	dc.b	"of ice--we're starving!"
	dc.b	$EC
	dc.b	"Please help us before"
	dc.b	$EC
	dc.b	"we all die!"
	dc.b	$FC

	even

loc_27BE0:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"You saved us! Feel free"
	dc.b	$F8
	dc.b	"to use my ship, heroes!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27C14:
	dc.w	loc_27C78-GameScript
	dc.b	EventFlag_WeatherFixed, $00
	dc.b	"I'm too young to die!"
	dc.b	$F8
	dc.b	"Please help us, heroes!"
	dc.b	$EC
	dc.b	"A tower in Aridia holds"
	dc.b	$EC
	dc.b	"the answer, so I'm told."
	dc.b	$FC

	even

loc_27C78:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"I saw a monster and a"
	dc.b	$F8
	dc.b	"woman fly to the east."
	dc.b	$FC
; -------------------------------------------------
	even

	dc.w	loc_27CAE-GameScript
	dc.b	EventFlag_WeatherFixed, $00

	even

loc_27CAE:
	dc.w	0
	dc.b	$FF, $00

	even

loc_27CB2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The cyborgs of Hazatak"
	dc.b	$F8
	dc.b	"rarely get human guests."
	dc.b	$FC

	even

; -------------------------------------------------
loc_27CE6:
	dc.w	loc_27D16-GameScript
	dc.b	EventFlag_WeatherFixed, $00
	dc.b	"Find Wren, then go east"
	dc.b	$F8
	dc.b	"to fix the weather."
	dc.b	$FC

	even

loc_27D16:
	dc.w	loc_2B5EC-GameScript
	dc.b	EventFlag_RhysGeneration, $00
	dc.b	"Long ago, Orakio took"
	dc.b	$F8
	dc.b	"the Moon Stone and the"
	dc.b	$EC
	dc.b	"Moon Tear from the"
	dc.b	$EC
	dc.b	"satellite system device."
	dc.b	$EC
	dc.b	"Once this was done, our"
	dc.b	$EC
	dc.b	"two moons drifted apart."
	dc.b	$EC
	dc.b	"The control panel is on"
	dc.b	$EC
	dc.b	"the second floor of the"
	dc.b	$EC
	dc.b	"weather control tower."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_27DEC:
	dc.w	loc_27E22-GameScript
	dc.b	EventFlag_WeatherFixed, $00
	dc.b	"Sounds like the weather"
	dc.b	$F8
	dc.b	"control needs adjusting."
	dc.b	$FC

	align 2

loc_27E22:
	dc.w	loc_2B492-GameScript
	dc.b	EventFlag_RhysGeneration, $00
	dc.b	"Long ago, two moons"
	dc.b	$F8
	dc.b	"orbited our world."
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_27E4E:
	dc.w	loc_27E7E-GameScript
	dc.b	EventFlag_WeatherFixed, $0D
	dc.b	"The one you seek abides"
	dc.b	$F8
	dc.b	"in a western cave."
	dc.b	$FC

	align 2

loc_27E7E:
	dc.w	loc_2B3A2-GameScript
	dc.b	EventFlag_RhysGeneration, $00
	dc.b	"Return the stones to the"
	dc.b	$F8
	dc.b	"satellite system and the"
	dc.b	$EC
	dc.b	"wandering moon will"
	dc.b	$EC
	dc.b	"grace our sky once more."
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_27EE2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"An old, crazy cyborg"
	dc.b	$F8
	dc.b	"wanders the desert."
	dc.b	$FC

	align 2

loc_27F10:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"A young woman was taken"
	dc.b	$F8
	dc.b	"into Shusoran's castle."
	dc.b	$FC

	even

loc_27F44:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Stories tell of monsters"
	dc.b	$F8
	dc.b	"appearing in fountains--"
	dc.b	$EC
	dc.b	"especially the fountains"
	dc.b	$EC
	dc.b	"of Shusoran!"
	dc.b	$FC

	even

loc_27FA0:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Our land, Agoe, battles"
	dc.b	$F8
	dc.b	"Shusoran, Laya's land."
	dc.b	$FC

	align 2

loc_27FD4:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Laya's people have an"
	dc.b	$F8
	dc.b	"army of vile monsters."
	dc.b	$EC
	dc.b	"We must fight them with"
	dc.b	$EC
	dc.b	"cyborgs and machines,"
	dc.b	$EC
	dc.b	"just as Orakio did 1,000"
	dc.b	$EC
	dc.b	"years ago."
	dc.b	$FC

	align 2

loc_28058:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The worst part is that"
	dc.b	$F8
	dc.b	"Layans look like us!"
	dc.b	$FC

	even

loc_28088:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"My people are not strong"
	dc.b	$F8
	dc.b	"enough to beat Shusoran."
	dc.b	$FC

	even

loc_280BE:
	dc.w	loc_261FC-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"If the Layans attack,"
	dc.b	$F8
	dc.b	"we'll be wiped out!"
	dc.b	$FC

	even

loc_280EC:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Shusoran seems peaceful,"
	dc.b	$F8
	dc.b	"but evil lurks within!"
	dc.b	$FC

	even

loc_28120:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"No matter how hard"
	dc.b	$F8
	dc.b	"we try..."
	dc.b	$EC
	dc.b	"Laya's folk beat us."
	dc.b	$EC
	dc.b	$FC

	align 2

loc_28158:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Shusoran's castle is now"
	dc.b	$F8
	dc.b	"heavily fortified."
	dc.b	$FC

	even

loc_28188:
	dc.w	loc_281B8-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"You can never tell what"
	dc.b	$F8
	dc.b	"Lyle will do next!"
	dc.b	$FC

	align 2

loc_281B8:
	dc.w	0
	dc.b	$FF, $00

	even

loc_281BC:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Legends say that the"
	dc.b	$F8
	dc.b	"Moon Stone and Moon Tear"
	dc.b	$EC
	dc.b	"belong in a tower deep"
	dc.b	$EC
	dc.b	"within Aridia."
	dc.b	$FC

	even

loc_28214:
	dc.w	loc_26296-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"There's never a guard"
	dc.b	$F8
	dc.b	"near when you need one."
	dc.b	$FC

	even

loc_28246:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Prince Lyle, welcome"
	dc.b	$F8
	dc.b	"home to Shusoran!"
	dc.b	$FC

	even

loc_28272:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I hear that Orakio's"
	dc.b	$F8
	dc.b	"people eat Layans!"
	dc.b	$FC

	even

loc_2829E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Let's wipe out those"
	dc.b	$F8
	dc.b	"filthy Orakians!"
	dc.b	$FC

	even

loc_282C8:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Ages ago, a sand bar"
	dc.b	$F8
	dc.b	"connected our island to"
	dc.b	$EC
	dc.b	"that of Cille, to the"
	dc.b	$EC
	dc.b	"north, at low tides."
	dc.b	$EC
	dc.b	"The sand bar won't form"
	dc.b	$EC
	dc.b	"unless the moon returns."
	dc.b	$FC

	align 2

loc_28356:
	dc.w	loc_26236-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Just be thankful you're"
	dc.b	$F8
	dc.b	"with Prince Lyle, spies!"
	dc.b	$FC

	align 2

loc_2838C:
	dc.w	loc_26296-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Orakians in Shusoran?"
	dc.b	$F8
	dc.b	"Guards! Help!"
	dc.b	$FC

	even

loc_283B4:
	dc.w	loc_26204-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Watch your step, Orakio-"
	dc.b	$F8
	dc.b	"lovers!"
	dc.b	$FC

	align 2

loc_283DA:
	dc.w	loc_26296-GameScript
	dc.b	EventFlag_LenaWedding, $00
	dc.b	"Return the Moon Stone to"
	dc.b	$F8
	dc.b	"us, Orakian spies!"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00

	even

	dc.w	0
	dc.b	$FF, $00

	even

loc_28412:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This is the weather"
	dc.b	$F8
	dc.b	"control system!"
	dc.b	$FC

	even

loc_2843A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren fixed the weather"
	dc.b	$F8
	dc.b	"control system!"
	dc.b	$EC
	dc.b	"LYLE \II owe you more"
	dc.b	$EC
	dc.b	"than I can ever repay."
	dc.b	$EC
	dc.b	"Please come with me to"
	dc.b	$EC
	dc.b	"see my beautiful land."
	dc.b	$EC
	dc.b	"We can go by ship from"
	dc.b	$EC
	dc.b	"the village of Rysel.\I"
	dc.b	$FC

	align 2

loc_284EE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This is the satellite"
	dc.b	$F8
	dc.b	"control system!"
	dc.b	$FC

	even

loc_28518:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"As the Moon Stone and"
	dc.b	$F8
	dc.b	"the Moon Tear are placed"
	dc.b	$EC
	dc.b	"in the panel, Dahlia,"
	dc.b	$EC
	dc.b	"the purple moon, moves."
	dc.b	$EC
	dc.b	"WREN \IPretty soon we'll"
	dc.b	$EC
	dc.b	"be able to cross the sea"
	dc.b	$EC
	dc.b	"north of Shusoran, to"
	dc.b	$EC
	dc.b	"reach Cille's island.\I"
	dc.b	$FC

	even

loc_285D8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The cave is blocked. You"
	dc.b	$F8
	dc.b	"can't get in."
	dc.b	$FC

	align 2

loc_28604:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Prince Rhys, Maia is"
	dc.b	$F8
	dc.b	"waiting in your room."
	dc.b	$FC

	align 2

loc_28634:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Hurry! Don't be late for"
	dc.b	$F8
	dc.b	"your own wedding!"
	dc.b	$FC

	align 2

loc_28664:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You're one lucky Prince!"
	dc.b	$F8
	dc.b	$FC

	even

loc_28682:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Please escort your bride"
	dc.b	$F8
	dc.b	"to the throne room."
	dc.b	$FC

	align 2

loc_286B4:
	dc.w	0
	dc.b	$FF, $00
	dc.w	character
	dc.b	" found a "
	dc.w	name
	dc.b	$F8
	dc.b	"inside."
	dc.b	$FC

	even

loc_286CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"No one in your party can"
	dc.b	$F8
	dc.b	"carry any more items."
	dc.b	$FC

	align 2

loc_28702:
	dc.w	0
	dc.b	$FF, $00
	dc.w	character
	dc.b	" found "
	dc.w	quantity
	dc.b	" meseta"
	dc.b	$F8
	dc.b	"inside."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.w	character
	dc.b	" found "
	dc.w	name
	dc.b	"."
	dc.b	$F8
	dc.b	$FC

	even

loc_28734:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The "
	dc.w	character
	dc.b	" glows"
	dc.b	$F8
	dc.b	"and you are inside!"
	dc.b	$FC

	even

loc_2875A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A thunderous voice booms"
	dc.b	$F8
	dc.b	"out:"
	dc.b	$EC
	dc.b	"Only Layans belong in"
	dc.b	$EC
	dc.b	"Laya's palace! Begone!"
	dc.b	$FC

	even

loc_287AA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya's Pendant glows and"
	dc.b	$F8
	dc.b	"darkness envelops you."
	dc.b	$FC

	even

loc_287DE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \II renounce my"
	dc.b	$F8
	dc.b	"claim to Landen's throne"
	dc.b	$EC
	dc.b	"and choose to become"
	dc.b	$EC
	dc.b	"your husband, Maia.\I"
	dc.b	$EC
	dc.b	"MAIA \IAnd I shall be"
	dc.b	$EC
	dc.b	"your wife and queen."
	dc.b	$EC
	dc.b	"Together we will rule"
	dc.b	$EC
	dc.b	"the fair land of Cille.\I"
	dc.b	$FC

	even

loc_28892:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"After many adventures,"
	dc.b	$F8
	dc.b	"Rhys at last found Maia."
	dc.b	$EC
	dc.b	"Rhys became king of the"
	dc.b	$EC
	dc.b	"peaceful land of Cille."
	dc.b	$EC
	dc.b	"Maia gave birth to a son"
	dc.b	$EC
	dc.b	"and they named him Ayn."
	dc.b	$EC
	dc.b	"This is the story of"
	dc.b	$EC
	dc.b	"Prince Ayn of Cille."
	dc.b	$EC
	dc.b	"After 15 years of peace,"
	dc.b	$EC
	dc.b	"war once again came...."
	dc.b	$FC

	even

loc_28982:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Hail, King Rhys, Queen"
	dc.b	$F8
	dc.b	"Maia, and Prince Ayn!"
	dc.b	$EC
	dc.b	"Cyborgs are attacking"
	dc.b	$EC
	dc.b	"our lands!"
	dc.b	$FC

	even

loc_289D4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The vile cyborgs have"
	dc.b	$F8
	dc.b	"beaten all our monsters!"
	dc.b	$FC

	align 2

loc_28A08:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"My lord, King Lyle of"
	dc.b	$F8
	dc.b	"Shusoran begs for help!"
	dc.b	$FC

	even

loc_28A3A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \IAyn, I was afraid"
	dc.b	$F8
	dc.b	"war would come again."
	dc.b	$EC
	dc.b	"Now you must venture"
	dc.b	$EC
	dc.b	"forth on a vital quest."
	dc.b	$EC
	dc.b	"Legends of Satellite say"
	dc.b	$EC
	dc.b	"it is a place of peace."
	dc.b	$EC
	dc.b	"I think we'll need a"
	dc.b	$EC
	dc.b	"sanctuary very soon."
	dc.b	$EC
	dc.b	"Take Mieu and Wren and"
	dc.b	$EC
	dc.b	"find this Satellite."
	dc.b	$EC
	dc.b	"Hurry back! I don't know"
	dc.b	$EC
	dc.b	"how long we have.\I"
	dc.b	$FC

	even

loc_28B4C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"THEA \IThank Laya you're"
	dc.b	$F8
	dc.b	"here. Let's get out now!"
	dc.b	$EC
	dc.b	"I have the Twins' Ruby;"
	dc.b	$EC
	dc.b	"it should come in handy."
	dc.b	$EC
	dc.b	"Please take me to my"
	dc.b	$EC
	dc.b	"father right away!\I"
	dc.b	$EC
	dc.b	"Thea joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_28BF4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SARI \II'm Sari, Lena's"
	dc.b	$F8
	dc.b	"daughter and ruler of"
	dc.b	$EC
	dc.b	"the country of Landen."
	dc.b	$EC
	dc.b	"I have the Power Topaz,"
	dc.b	$EC
	dc.b	"but you won't get it"
	dc.b	$EC
	dc.b	"without a fight!\I"
	dc.b	$FC

	even

loc_28C7C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SARI \IOK, I'll let you"
	dc.b	$F8
	dc.b	"use the Power Topaz, but"
	dc.b	$EC
	dc.b	"you have to let me come"
	dc.b	$EC
	dc.b	"along to guard it!\I"
	dc.b	$EC
	dc.b	"Sari joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_28CF4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Climb onto my back. I'll"
	dc.b	$F8
	dc.b	"take you over to Techna."
	dc.b	$FC

	even

loc_28D2A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LYLE \IAt last I can tell"
	dc.b	$F8
	dc.b	"you my long-held secret."
	dc.b	$EC
	dc.b	"I have the power to"
	dc.b	$EC
	dc.b	"change into a dragon."
	dc.b	$EC
	dc.b	"Yes, it was I who stole"
	dc.b	$EC
	dc.b	"Maia so very long ago!"
	dc.b	$EC
	dc.b	"Please don't tell Rhys."
	dc.b	$EC
	dc.b	"Guard Thea well, Ayn!\I"
	dc.b	$FC

	even

loc_28DE8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lyle bid farewell to"
	dc.b	$F8
	dc.b	"Thea and then he died."
	dc.b	$FC

	even

loc_28E18:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You are the first of"
	dc.b	$F8
	dc.b	"your people to visit us."
	dc.b	$EC
	dc.b	"The Power Topaz proves"
	dc.b	$EC
	dc.b	"your courage and worth."
	dc.b	$EC
	dc.b	"You have earned the"
	dc.b	$EC
	dc.b	"right to know the truth!"
	dc.b	$EC
	dc.b	"It is time for you to"
	dc.b	$EC
	dc.b	"see your true world!"
	dc.b	$FC

	align 2

loc_28ED2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A voice speaks: \IKnow"
	dc.b	$F8
	dc.b	"your true world at last!"
	dc.b	$EC
	dc.b	"It is a giant spaceship"
	dc.b	$EC
	dc.b	"built by our ancestors!\I"
	dc.b	$FC

	even

loc_28F36:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"\IWe now approach the"
	dc.b	$F8
	dc.b	"craft called Satellite.\I"
	dc.b	$FC

	even

loc_28F68:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"\IAs you see, it is also"
	dc.b	$F8
	dc.b	"an ancient spaceship.\I"
	dc.b	$FC

	even

loc_28F9C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SIREN \ISo, you've found"
	dc.b	$F8
	dc.b	"me after all, rabble!"
	dc.b	$EC
	dc.b	"Seems that a few rats"
	dc.b	$EC
	dc.b	"escaped my cyborg army."
	dc.b	$EC
	dc.b	"I once served Orakio,"
	dc.b	$EC
	dc.b	"but Laya forced me here."
	dc.b	$EC
	dc.b	"Then she somehow moved"
	dc.b	$EC
	dc.b	"this satellite far away."
	dc.b	$EC
	dc.b	"I've waited 1,000 years"
	dc.b	$EC
	dc.b	"for my revenge!\I"
	dc.b	$FC

	even

loc_29084:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SIREN \IYou have won but"
	dc.b	$F8
	dc.b	"a single battle, Ayn."
	dc.b	$EC
	dc.b	"The war is not over yet."
	dc.b	$EC
	dc.b	"I will return one day!\I"
	dc.b	$EC
	dc.b	"Siren disappears!"
	dc.b	$EC
	dc.b	"   "
	dc.b	$EC
	dc.b	"Thus did Prince Ayn"
	dc.b	$EC
	dc.b	"fulfill his destiny."
	dc.b	$EC
	dc.b	"Rejoicing, his people"
	dc.b	$EC
	dc.b	"moved to the satellite."
	dc.b	$EC
	dc.b	"King Rhys decreed that"
	dc.b	$EC
	dc.b	"Ayn should marry soon."
	dc.b	$EC
	dc.b	"Two women made known"
	dc.b	$EC
	dc.b	"their interest in him."
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"After a long journey of"
	dc.b	$F8
	dc.b	"trials and hardships,"
	dc.b	$EC
	dc.b	"Ayn chose a bride and"
	dc.b	$EC
	dc.b	"settled down to enjoy"
	dc.b	$EC
	dc.b	"the peace that he had"
	dc.b	$EC
	dc.b	"brought to his people."
	dc.b	$FC

	align 2

loc_2923A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \IThough I sought"
	dc.b	$F8
	dc.b	"Maia, I choose you.\I"
	dc.b	$EC
	dc.b	"LENA \ILet's return home"
	dc.b	$EC
	dc.b	"to Landen and Satera.\I"
	dc.b	$FC

	even

loc_29298:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Rhys and Lena wed, thus"
	dc.b	$F8
	dc.b	"uniting their homelands."
	dc.b	$EC
	dc.b	"Soon, a son, Nial, was"
	dc.b	$EC
	dc.b	"born to Rhys and Lena."
	dc.b	$EC
	dc.b	"Peace settled over the"
	dc.b	$EC
	dc.b	"land as Nial grew up."
	dc.b	$EC
	dc.b	"When Nial was 18, evil"
	dc.b	$EC
	dc.b	"once again stirred...."
	dc.b	$FC

	even

loc_29356:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A messenger from Satera,"
	dc.b	$F8
	dc.b	"King Rhys!"
	dc.b	$FC

	even

loc_2937E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Queen Lena, monsters"
	dc.b	$F8
	dc.b	"have invaded Satera!"
	dc.b	$EC
	dc.b	"Your father has died in"
	dc.b	$EC
	dc.b	"battle. Please help us!"
	dc.b	$FC

	even

loc_293DC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \IYour mother's land"
	dc.b	$F8
	dc.b	"is being overrun, Nial."
	dc.b	$EC
	dc.b	"Journey westward and see"
	dc.b	$EC
	dc.b	"who is invading Satera."
	dc.b	$EC
	dc.b	"Take Wren and Mieu, but"
	dc.b	$EC
	dc.b	"be careful!\I"
	dc.b	$FC

	even

loc_29468:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"ALAIR \IThank you for"
	dc.b	$F8
	dc.b	"freeing me, Prince Nial."
	dc.b	$EC
	dc.b	"My brother Lune needs to"
	dc.b	$EC
	dc.b	"be stopped--he's crazy!"
	dc.b	$EC
	dc.b	"I guess 1,000 years of"
	dc.b	$EC
	dc.b	"exile has warped him."
	dc.b	$EC
	dc.b	"All he wants is to kill"
	dc.b	$EC
	dc.b	"Orakians and cyborgs!"
	dc.b	$EC
	dc.b	"I'm going back to try to"
	dc.b	$EC
	dc.b	"convince him to stop.\I"
	dc.b	$FC

	even

loc_29556:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RYAN \II'm Ryan, the"
	dc.b	$F8
	dc.b	"leader of these rebels."
	dc.b	$EC
	dc.b	"I know that you rescued"
	dc.b	$EC
	dc.b	"Lune's sister Alair."
	dc.b	$EC
	dc.b	"Lune must have sent you"
	dc.b	$EC
	dc.b	"three to infiltrate us!\I"
	dc.b	$FC

	even

loc_295E4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \IMy, my, bickering"
	dc.b	$F8
	dc.b	"amongst ourselves, eh?\I"
	dc.b	$FC

	even

loc_29618:
	dc.w	$0
	dc.b	$FF, $00
	dc.b	"RYAN \ILune! How did you"
	dc.b	$F8
	dc.b	"get here, you demon?\I"
	dc.b	$FC

	even

loc_2964A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \IThat's Emperor"
	dc.b	$F8
	dc.b	"Demon to you, worm!"
	dc.b	$EC
	dc.b	"Abandon your revolt or"
	dc.b	$EC
	dc.b	"you will all die!\I"
	dc.b	$FC

	align 2

loc_296A2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RYAN \ISorry, Nial. I'll"
	dc.b	$F8
	dc.b	"join you to get Lune."
	dc.b	$EC
	dc.b	"I have some parts for"
	dc.b	$EC
	dc.b	"your Wren in a chest.\I"
	dc.b	$EC
	dc.b	"Ryan joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_2971A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"WREN \ILet's see where"
	dc.b	$F8
	dc.b	"this passage goes!\I"
	dc.b	$FC

	even

loc_29748:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This is a world within"
	dc.b	$F8
	dc.b	"the world of Aridia."
	dc.b	$FC

	even

loc_29778:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IThat's what our"
	dc.b	$F8
	dc.b	"world really looks like?"
	dc.b	$EC
	dc.b	"It's a spaceship! But"
	dc.b	$EC
	dc.b	"who built it?\I"
	dc.b	$FC

	even

loc_297D0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"WREN \IWe're approaching"
	dc.b	$F8
	dc.b	"the Satellite.\I"
	dc.b	$FC

	even

loc_297FC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LAYA \ISatellite is just"
	dc.b	$F8
	dc.b	"another spaceship!\I"
	dc.b	$FC

	even

loc_2982C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \IYou Orakians have"
	dc.b	$F8
	dc.b	"invaded my domain!"
	dc.b	$EC
	dc.b	"Orakio banished us here"
	dc.b	$EC
	dc.b	"almost 1,000 years ago."
	dc.b	$EC
	dc.b	"Cryogenics has kept me"
	dc.b	$EC
	dc.b	"alive for centuries,"
	dc.b	$EC
	dc.b	"waiting for revenge. Now"
	dc.b	$EC
	dc.b	"my revenge is at hand!\I"
	dc.b	$FC

	even

loc_298E8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \II'm surprised that"
	dc.b	$F8
	dc.b	"you don't just kill me."
	dc.b	$EC
	dc.b	"Laya's Pendant! You must"
	dc.b	$EC
	dc.b	"be Laya's little sister!"
	dc.b	$EC
	dc.b	"I have no wish to fight"
	dc.b	$EC
	dc.b	"you. The war is ended!"
	dc.b	$EC
	dc.b	"I'll recall my armies;"
	dc.b	$EC
	dc.b	"at last I am at peace!\I"
	dc.b	$EC
	dc.b	"Nial's quest has ended."
	dc.b	$EC
	dc.b	"   "
	dc.b	$EC
	dc.b	"The threat from Lune's"
	dc.b	$EC
	dc.b	"monster armies is over."
	dc.b	$FC

	even

loc_299F8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \INial, thank you"
	dc.b	$F8
	dc.b	"for rescuing my sister."
	dc.b	$EC
	dc.b	"I have been told that"
	dc.b	$EC
	dc.b	"you have a tough choice."
	dc.b	$EC
	dc.b	"Both Alair and Laya wish"
	dc.b	$EC
	dc.b	"to marry you!\I"
	dc.b	$FC

	even

loc_29A82:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You cannot enter. Lune"
	dc.b	$F8
	dc.b	"forbids it!"
	dc.b	$FC

	align 2

loc_29AAA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Ayn asked Thea to be his"
	dc.b	$F8
	dc.b	"wife and she accepted."
	dc.b	$EC
	dc.b	"Lyle and Rhys gave their"		; Lyle? He's supposed to be dead at this point
	dc.b	$EC
	dc.b	"blessings as well."
	dc.b	$FC

	even

loc_29B0A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Ayn and Thea began their"
	dc.b	$F8
	dc.b	"new life on far Azura."
	dc.b	$EC
	dc.b	"Their rule brought peace"
	dc.b	$EC
	dc.b	"and prosperity to all."
	dc.b	$EC
	dc.b	"In time, Queen Thea gave"
	dc.b	$EC
	dc.b	"birth to a son, Sean."
	dc.b	$EC
	dc.b	"When he reached manhood,"
	dc.b	$EC
	dc.b	"evil arose once more;"
	dc.b	$EC
	dc.b	"Sean was called upon to"
	dc.b	$EC
	dc.b	"fight for his people...."
	dc.b	$FC

	even


loc_29BFE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"AYN \II choose you, Sari,"
	dc.b	$F8
	dc.b	"as my one true love.\I"
	dc.b	$EC
	dc.b	"SARI \II accept, but no"
	dc.b	$EC
	dc.b	"more quests for you!\I"
	dc.b	$FC

	even

loc_29C5E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Thus Ayn became king of"
	dc.b	$F8
	dc.b	"the nation of Landen."
	dc.b	$EC
	dc.b	"Sari soon gave birth to"
	dc.b	$EC
	dc.b	"a son, Prince Crys."
	dc.b	$EC
	dc.b	"Enemies beset Landen for"
	dc.b	$EC
	dc.b	"the next 20 years, but"
	dc.b	$EC
	dc.b	"Ayn and Sari defended"
	dc.b	$EC
	dc.b	"their land without fail."
	dc.b	$EC
	dc.b	"Then came the news that"
	dc.b	$EC
	dc.b	"they had long dreaded..."
	dc.b	$FC

	even

loc_29D4C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IAt last our people"
	dc.b	$F8
	dc.b	"are joined together!\I"
	dc.b	$EC
	dc.b	"LAYA \IOur marriage will"
	dc.b	$EC
	dc.b	"bring peace to all.\I"
	dc.b	$FC

	even

loc_29DAC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nial and Laya's marriage"
	dc.b	$F8
	dc.b	"ended the years of war"
	dc.b	$EC
	dc.b	"and hatred between the"
	dc.b	$EC
	dc.b	"Orakians and the Layans."
	dc.b	$EC
	dc.b	"Laya had twins, Adan, a"
	dc.b	$EC
	dc.b	"boy, and Gwyn, a girl."
	dc.b	$EC
	dc.b	"The next 16 years were"
	dc.b	$EC
	dc.b	"peaceful and prosperous."
	dc.b	$EC
	dc.b	"But Gwyn began to have"
	dc.b	$EC
	dc.b	"dreadful nightmares."
	dc.b	$EC
	dc.b	"Every night she dreamt"
	dc.b	$EC
	dc.b	"of falling into a dark"
	dc.b	$EC
	dc.b	"hole, a pit from which"
	dc.b	$EC
	dc.b	"there was no escape."
	dc.b	$FC

	even

loc_29EF6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IWill you marry"
	dc.b	$F8
	dc.b	"me, Alair?\I"
	dc.b	$EC
	dc.b	"ALAIR \II was starting to"
	dc.b	$EC
	dc.b	"think you'd never ask!\I"
	dc.b	$FC

	even

loc_29F4C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune declared Nial to be"
	dc.b	$F8
	dc.b	"king of the moon Dahlia."
	dc.b	$EC
	dc.b	"The war ended and peace"
	dc.b	$EC
	dc.b	"settled over Alisa III."
	dc.b	$EC
	dc.b	"Alair and Nial soon had"
	dc.b	$EC
	dc.b	"a son they named Aron;"
	dc.b	$EC
	dc.b	"Lune married and had a"
	dc.b	$EC
	dc.b	"daughter he named Kara."
	dc.b	$EC
	dc.b	"Aron and Kara grew as"
	dc.b	$EC
	dc.b	"peace reigned over all."
	dc.b	$EC
	dc.b	"As the children neared"
	dc.b	$EC
	dc.b	"the age of 18, however,"
	dc.b	$EC
	dc.b	"the long years of peace"
	dc.b	$EC
	dc.b	"came to a sudden end...."
	dc.b	$FC

	even

loc_2A09E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"King Ayn! Something's"
	dc.b	$F8
	dc.b	"happening on Alisa III!"
	dc.b	$FC

	even

loc_2A0D0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"AYN \ISean, our beautiful"
	dc.b	$F8
	dc.b	"moon is being destroyed!"
	dc.b	$EC
	dc.b	"Your mother and I cannot"
	dc.b	$EC
	dc.b	"bear to leave our home."
	dc.b	$EC
	dc.b	"Take the shuttle and"
	dc.b	$EC
	dc.b	"save yourself, my son."
	dc.b	$EC
	dc.b	"Journey to Landen, your"
	dc.b	$EC
	dc.b	"grandfather's homeland.\I"
	dc.b	$FC

	even

loc_2A194:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"THEA \II'm staying with"
	dc.b	$F8
	dc.b	"Ayn, but you must go."
	dc.b	$EC
	dc.b	"Mieu and Wren will go"
	dc.b	$EC
	dc.b	"with you. Farewell!\I"
	dc.b	$FC

	even

loc_2A1F0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \IWe're lucky to be"
	dc.b	$F8
	dc.b	"alive after that crash!"
	dc.b	$EC
	dc.b	"We must try to make it"
	dc.b	$EC
	dc.b	"to Landen, Sean.\I"
	dc.b	$FC

	even

loc_2A24E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"WREN \ISean, hurry! You"
	dc.b	$F8
	dc.b	"must escape!\I"
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00

	even

	dc.w	0
	dc.b	$FF, $00

	even

loc_2A280:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LAYA \II was very young"
	dc.b	$F8
	dc.b	"when Laya fought Orakio."
	dc.b	$EC
	dc.b	"She left with a knight"
	dc.b	$EC
	dc.b	"who wore a black sword."
	dc.b	$EC
	dc.b	"I must know the truth."
	dc.b	$EC
	dc.b	"Please take me along!\I"
	dc.b	$EC
	dc.b	"Laya joins your party."
	dc.b	$EC
	dc.b	$FC

	align 2

loc_2A32A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LAYA \IWhen your father"
	dc.b	$F8
	dc.b	"decided to marry Alair,"
	dc.b	$EC
	dc.b	"I left the Laya Pendant"
	dc.b	$EC
	dc.b	"and came here to sleep."
	dc.b	$EC
	dc.b	"After 18 years of rest,"
	dc.b	$EC
	dc.b	"I yearn for adventure!\I"
	dc.b	$EC
	dc.b	"Laya joins your party."
	dc.b	$EC
	dc.b	$FC

	align 2

loc_2A3D6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"King Ayn! A messenger"
	dc.b	$F8
	dc.b	"from Azura is here!"
	dc.b	$FC

	even

loc_2A404:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I fear that I bring very"
	dc.b	$F8
	dc.b	"grim news, your majesty."
	dc.b	$EC
	dc.b	"Siren has returned to"
	dc.b	$EC
	dc.b	"exact his vengeance!"
	dc.b	$EC
	dc.b	"Siren plans to propel"
	dc.b	$EC
	dc.b	"our world into the sun!"
	dc.b	$FC

	align 2

loc_2A494:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"AYN \IWhen we were young,"
	dc.b	$F8
	dc.b	"your mother and I were"
	dc.b	$EC
	dc.b	"shown that our world is"
	dc.b	$EC
	dc.b	"really a huge spaceship."
	dc.b	$EC
	dc.b	"Somewhere there must be"
	dc.b	$EC
	dc.b	"someone who can aid you."
	dc.b	$EC
	dc.b	"Find help or we're all"
	dc.b	$EC
	dc.b	"doomed to fiery death!\I"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"GWYN \IThat earthquake!"
	dc.b	$F8
	dc.b	"It is often in my dream."
	dc.b	$EC
	dc.b	"I feel vibrations as I"
	dc.b	$EC
	dc.b	"fall into the black pit."
	dc.b	$EC
	dc.b	"I have the feeling that"
	dc.b	$EC
	dc.b	"great evil is stirring!\I"
	dc.b	$FC

	align 2

loc_2A5F0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nial! Alair! Lune!"
	dc.b	$F8
	dc.b	"Look out the window!"
	dc.b	$FC

	even

loc_2A61C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Another spaceship just"
	dc.b	$F8
	dc.b	"like ours!"
	dc.b	$FC

	even

loc_2A642:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Why are the ships firing"
	dc.b	$F8
	dc.b	"at each other?"
	dc.b	$FC

	even

loc_2A66E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KARA \IYou're not going"
	dc.b	$F8
	dc.b	"anywhere without me!\I"
	dc.b	$EC
	dc.b	"Kara joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_2A6B8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A voice rings out for"
	dc.b	$F8
	dc.b	"all of you to hear:"
	dc.b	$EC
	dc.b	"\ISister, it is time for"
	dc.b	$EC
	dc.b	"you to know the truth."
	dc.b	$EC
	dc.b	"Though Orakio and I have"
	dc.b	$EC
	dc.b	"fought for many years,"
	dc.b	$EC
	dc.b	"we finally realize that"
	dc.b	$EC
	dc.b	"we have been deceived."
	dc.b	$EC
	dc.b	"An evil force from times"
	dc.b	$EC
	dc.b	"beyond legend is using"
	dc.b	$EC
	dc.b	"us to satisfy its desire"
	dc.b	$EC
	dc.b	"for pain and suffering."
	dc.b	$EC
	dc.b	"We are joining forces to"
	dc.b	$EC
	dc.b	"fight this ancient evil."
	dc.b	$EC
	dc.b	"In case we never return,"
	dc.b	$EC
	dc.b	"I leave you the pendant;"
	dc.b	$EC
	dc.b	"you will hear this when"
	dc.b	$EC
	dc.b	"you are ready. Goodbye!\I"
	dc.b	$FC

	even

loc_2A86A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We have protected Laya"
	dc.b	$F8
	dc.b	"for over 1,000 years."
	dc.b	$EC
	dc.b	"Cryogenic sleep has kept"
	dc.b	$EC
	dc.b	"her alive since the war."
	dc.b	$FC

	even

loc_2A8CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This princess is Laya's"
	dc.b	$F8
	dc.b	"younger sister."
	dc.b	$EC
	dc.b	"Strangely enough, she is"
	dc.b	$EC
	dc.b	"also named Laya!"
	dc.b	$FC

	even

loc_2A924:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya entrusted the"
	dc.b	$F8
	dc.b	"future to her sister."
	dc.b	$FC

	even

loc_2A952:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Mystoke, on Frigidia,"
	dc.b	$F8
	dc.b	"holds a key to truth."
	dc.b	$EC
	dc.b	"Return to the desert and"
	dc.b	$EC
	dc.b	"go southwest with Laya."
	dc.b	$EC
	dc.b	"The portal to Mystoke"
	dc.b	$EC
	dc.b	"awaits you there."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nial, you must strike a"
	dc.b	$F8
	dc.b	"blow to save us all!"
	dc.b	$FC

	even
; -------------------------------------------------
loc_2AA0E:
	dc.w	loc_2AA3A-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"The people of Landen"
	dc.b	$F8
	dc.b	"welcome you, Sean."
	dc.b	$FC

	even

loc_2AA3A:
	dc.w	loc_2AA62-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"We eagerly await your"
	dc.b	$F8
	dc.b	"return, Crys."
	dc.b	$FC

	even

loc_2AA62:
	dc.w	loc_2AA88-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"Hurry back to us, Adan"
	dc.b	$F8
	dc.b	"and Gwyn."
	dc.b	$FC

	align 2

loc_2AA88:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Aron,welcome to Landen."
	dc.b	$F8
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2AAAA:
	dc.w	loc_2AAD0-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"Who would want to"
	dc.b	$F8
	dc.b	"destroy Azura?"
	dc.b	$FC

	even

loc_2AAD0:
	dc.w	loc_2AB26-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"Lune, Laya's general,"
	dc.b	$F8
	dc.b	"has reappeared after"
	dc.b	$EC
	dc.b	"1,000 years. He's"
	dc.b	$EC
	dc.b	"the worst news yet!"
	dc.b	$FC

	align 2

loc_2AB26:
	dc.w	loc_2AB58-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"Lune may know something"
	dc.b	$F8
	dc.b	"about the earthquake."
	dc.b	$FC

	even

loc_2AB58:
	dc.w	loc_2AAAA-GameScript
	dc.b	EventFlag_AronGeneration, $00
	dc.b	"What in the world could"
	dc.b	$F8
	dc.b	"that have been?"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2AB84:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The Twins' Ruby is the"
	dc.b	$F8
	dc.b	"key to another world"
	dc.b	$EC
	dc.b	"that lies beyond a cave"
	dc.b	$EC
	dc.b	"far to the south."
	dc.b	$FC

	even

loc_2ABDE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"As long as you're here,"
	dc.b	$F8
	dc.b	"Landen will be safe!"
	dc.b	$FC

	align 2
; -------------------------------------------------
loc_2AC10:
	dc.w	loc_2AC46-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"I hear that some cyborgs"
	dc.b	$F8
	dc.b	"have turned against us!"
	dc.b	$FC

	even

loc_2AC46:
	dc.w	loc_2AC7C-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"I hear that some cyborgs"
	dc.b	$F8
	dc.b	"have turned against us!"
	dc.b	$FC

	even

loc_2AC7C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"What could have caused"
	dc.b	$F8
	dc.b	"an earthquake like that?"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2ACB0:
	dc.w	loc_2ACE0-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"If Ayn had married Sari,"
	dc.b	$F8
	dc.b	"we might have won."
	dc.b	$FC

	even

loc_2ACE0:
	dc.w	loc_2AD0C-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"How can we survive"
	dc.b	$F8
	dc.b	"against Lune's army?"
	dc.b	$FC

	even

loc_2AD0C:
	dc.w	loc_2AD3A-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"Something shook our"
	dc.b	$F8
	dc.b	"Alisa ", $BE, $BF, " mighty hard."
	dc.b	$FC

	even

loc_2AD3A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Is it true that we were"
	dc.b	$F8
	dc.b	"attacked by a spaceship?"
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_2AD70:
	dc.w	loc_2AE2C-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"Sari protected us from"
	dc.b	$F8
	dc.b	"Lune's monstrous army."
	dc.b	$EC
	dc.b	"Lune was once Laya's"
	dc.b	$EC
	dc.b	"most trusted general."
	dc.b	$EC
	dc.b	"But Orakio banished Lune"
	dc.b	$EC
	dc.b	"to the far moon, Dahlia."
	dc.b	$EC
	dc.b	"No one knows how Lune"
	dc.b	$EC
	dc.b	"survived for so long."
	dc.b	$FC

	even

loc_2AE2C:
	dc.w	loc_2AE5A-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"Lune is approaching from"
	dc.b	$F8
	dc.b	"far to the west."
	dc.b	$FC

	even

loc_2AE5A:
	dc.w	loc_2AE88-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"I only hope that we're"
	dc.b	$F8
	dc.b	"not at war again."
	dc.b	$FC

	even

loc_2AE88:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Someone on Alisa ", $BE, $BF
	dc.b	$F8
	dc.b	"attacked that spaceship!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2AEBA:
	dc.w	loc_2AEEC-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"Lune is coming! Run for"
	dc.b	$F8
	dc.b	"your lives! Aieeeee!"
	dc.b	$FC

	even

loc_2AEEC:
	dc.w	loc_2AF22-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"We can beat Lune as long"
	dc.b	$F8
	dc.b	"as we have Ayn and Sari!"
	dc.b	$FC

	even

loc_2AF22:
	dc.w	loc_2AF58-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"We'll be safe as long as"
	dc.b	$F8
	dc.b	"Nial and Laya are here."
	dc.b	$FC

	even

loc_2AF58:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"It's a dangerous world,"
	dc.b	$F8
	dc.b	"Aron; watch your back!"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2AF8C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune's monsters first"
	dc.b	$F8
	dc.b	"appeared near our city."
	dc.b	$FC

	even

loc_2AFBE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Could this truly be the"
	dc.b	$F8
	dc.b	"Lune of ancient legends?"
	dc.b	$FC

	align 2

loc_2AFF4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune used to be Laya's"
	dc.b	$F8
	dc.b	"right-hand man!"
	dc.b	$FC

	even

loc_2B020:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to the bustling"
	dc.b	$F8
	dc.b	"port city of Yaata."
	dc.b	$FC

	even

loc_2B050:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Cyborgs are attacking"
	dc.b	$F8
	dc.b	"Orakians! What gives?"
	dc.b	$FC

	even

loc_2B080:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Someone's directing the"
	dc.b	$F8
	dc.b	"monsters and cyborgs!"
	dc.b	$EC
	dc.b	"No Orakian or Layan can"
	dc.b	$EC
	dc.b	"do that!"
	dc.b	$FC

	even

loc_2B0D4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nial, please defend"
	dc.b	$F8
	dc.b	"Ilan from Lune!"
	dc.b	$FC

	even

loc_2B0FC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"It's not possible! He'd"
	dc.b	$F8
	dc.b	"be over 1,000 years old!"
	dc.b	$FC

	even

loc_2B132:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I though Lune died many"
	dc.b	$F8
	dc.b	"centuries ago."
	dc.b	$FC

	even

loc_2B15E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to the island"
	dc.b	$F8
	dc.b	"village of Ilan."
	dc.b	$FC

	align 2

loc_2B18A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Nothing makes sense--the"
	dc.b	$F8
	dc.b	"world has gone crazy!"
	dc.b	$EC
	dc.b	"Cyborgs battle Orakians;"
	dc.b	$EC
	dc.b	"monsters fight Layans!"
	dc.b	$FC

	even

loc_2B1EE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A messenger arrived from"
	dc.b	$F8
	dc.b	"your people, Prince."
	dc.b	$EC
	dc.b	"They're under attack and"
	dc.b	$EC
	dc.b	"need you desperately!"
	dc.b	$FC

	even

loc_2B250:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Rysel village still"
	dc.b	$F8
	dc.b	"honors your father."
	dc.b	$FC

	even

loc_2B27C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Satellite? It's nothing"
	dc.b	$F8
	dc.b	"more than a tall tale."
	dc.b	$FC

	even

loc_2B2B0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Your grandfather once"
	dc.b	$F8
	dc.b	"saved the folk of Rysel."
	dc.b	$FC

	even

loc_2B2E4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya's lands across the"
	dc.b	$F8
	dc.b	"sea are now gone."
	dc.b	$FC

	even

loc_2B312:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Human visitors are rare"
	dc.b	$F8
	dc.b	"in the town of Hazatak."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B346:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The Power Topaz belongs"
	dc.b	$F8
	dc.b	"to Lena's daughter."
	dc.b	$EC
	dc.b	"Gossip has it that she"
	dc.b	$EC
	dc.b	"now lives in Landen."
	dc.b	$FC

	even

loc_2B3A2:
	dc.w	loc_2B346-GameScript
	dc.b	EventFlag_AynQuestStart, $00
	dc.b	"Southeast of town is a"
	dc.b	$F8
	dc.b	"mysterious whirlpool."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B3D4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Journey southeast to see"
	dc.b	$F8
	dc.b	"an amazing whirlpool."
	dc.b	$FC

	even

loc_2B408:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"An old cyborg roams the"
	dc.b	$F8
	dc.b	"desert north of here."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B43A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You can reach Satellite"
	dc.b	$F8
	dc.b	"from the eastern world."
	dc.b	$EC
	dc.b	"But you need the Power"
	dc.b	$EC
	dc.b	"Topaz first."
	dc.b	$FC

	even

loc_2B492:
	dc.w	loc_2B43A-GameScript
	dc.b	EventFlag_AynQuestStart, $00
	dc.b	"If you have Wren's sub"
	dc.b	$F8
	dc.b	"parts, you can enter the"
	dc.b	$EC
	dc.b	"whirlpool south of town."
	dc.b	$EC
	dc.b	"Who knows what's there?"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B4F8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"To explore the whirlpool"
	dc.b	$F8
	dc.b	"southeast of Hazatak,"
	dc.b	$EC
	dc.b	"first find the sub parts"
	dc.b	$EC
	dc.b	"for your Wren cyborg."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B55A:
	dc.w	loc_2B58C-GameScript
	dc.b	EventFlag_AynShusoranBoat2, $00
	dc.b	"Those foolish humans are"
	dc.b	$F8
	dc.b	"still fighting! Why?"
	dc.b	$FC

	even

loc_2B58C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Your family and friends"
	dc.b	$F8
	dc.b	"fled far to the west."
	dc.b	$EC
	dc.b	"They have the Twins'"
	dc.b	$EC
	dc.b	"Ruby, the key to Landen."
	dc.b	$FC

	even

loc_2B5EC:
	dc.w	loc_2B55A-GameScript
	dc.b	EventFlag_AynQuestStart, $00
	dc.b	"We won't fight and you"
	dc.b	$F8
	dc.b	"can't make us!"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B616:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We leave the fighting to"
	dc.b	$F8
	dc.b	"you foolish humans!"
	dc.b	$FC

	even

loc_2B648:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Agoe."
	dc.b	$F8
	dc.b	$FC

	even

loc_2B65E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"No one knows who leads"
	dc.b	$F8
	dc.b	"the cyborg armies."
	dc.b	$FC

	even

; -------------------------------------------------
loc_2B68C:
	dc.w	loc_2B6C0-GameScript
	dc.b	EventFlag_AynShusoranBoat, $00
	dc.b	"Neither Rhys nor Lyle"
	dc.b	$F8
	dc.b	"can protect their lands."
	dc.b	$FC

	align 2

loc_2B6C0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The people of Cille and"
	dc.b	$F8
	dc.b	"Shusoran fled."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2B6EC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Agoe, the land of"
	dc.b	$F8
	dc.b	"swordsmen, is peaceful."
	dc.b	$FC

	even

loc_2B71A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Cille and Shusoran were"
	dc.b	$F8
	dc.b	"once beautiful places."
	dc.b	$FC

	align 2

loc_2B74E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Long ago, I met a one-"
	dc.b	$F8
	dc.b	"eyed knight named Lyle."
	dc.b	$FC

	align 2

loc_2B782:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Shusoran will be fine as"
	dc.b	$F8
	dc.b	"long as Lyle, the"
	dc.b	$EC
	dc.b	"dragon-knight, is our"
	dc.b	$EC
	dc.b	"lord and ruler."
	dc.b	$FC

	even

loc_2B7D8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our fate is in your"
	dc.b	$F8
	dc.b	"hands, Prince Ayn."
	dc.b	$FC

	even

loc_2B804:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Who is creating these"
	dc.b	$F8
	dc.b	"marauding cyborgs?"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"What has happened to the"
	dc.b	$F8
	dc.b	"lovely land of Cille?"
	dc.b	$FC

	align 2

loc_2B866:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I wonder if Lyle's"
	dc.b	$F8
	dc.b	"kingdom has already"
	dc.b	$EC
	dc.b	"fallen into the hands of"
	dc.b	$EC
	dc.b	"our enemies."
	dc.b	$FC

	align 2

loc_2B8B8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Find Satellite and save"
	dc.b	$F8
	dc.b	"us all, Prince Ayn!"
	dc.b	$FC

	even

loc_2B8E8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Satellite is a place of"
	dc.b	$F8
	dc.b	"peace, or so I hear."
	dc.b	$FC

	align 2

loc_2B91A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The cyborgs were too"
	dc.b	$F8
	dc.b	"powerful to be resisted."
	dc.b	$EC
	dc.b	"Everyone fled to Aridia,"
	dc.b	$EC
	dc.b	"but I refuse to leave!"
	dc.b	$FC

	even

loc_2B97C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Techna, the"
	dc.b	$F8
	dc.b	"Castle of Power."
	dc.b	$FC

	even

loc_2B9A8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The castle dungeon can"
	dc.b	$F8
	dc.b	"take you to Satellite."
	dc.b	$EC
	dc.b	"Beware--only in tales is"
	dc.b	$EC
	dc.b	"it a place of peace!"
	dc.b	$FC

	even

loc_2BA08:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The cyborgs have taken"
	dc.b	$F8
	dc.b	"over our castle."
	dc.b	$FC

	even

loc_2BA34:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We Orakians sympathize"
	dc.b	$F8
	dc.b	"with your plight."
	dc.b	$FC

	even

loc_2BA62:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This plague of cyborgs"
	dc.b	$F8
	dc.b	"comes from Satellite!"
	dc.b	$FC

	even

loc_2BA94:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Don't you know, Prince?"
	dc.b	$F8
	dc.b	"Satellite is Azura!"
	dc.b	$FC

	even

loc_2BAC4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The Castle of Power is"
	dc.b	$F8
	dc.b	"a good name for Techna."
	dc.b	$FC

	align 2

loc_2BAF8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Beneath this world-dome"
	dc.b	$F8
	dc.b	"is our ship's engine!"
	dc.b	$EC
	dc.b	"We're the descendants of"
	dc.b	$EC
	dc.b	"the ship's technicians."
	dc.b	$FC

	align 2

loc_2BB5C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The descendants of the"
	dc.b	$F8
	dc.b	"spaceship's pilots live"
	dc.b	$EC
	dc.b	"on the other side of"
	dc.b	$EC
	dc.b	"this spaceship."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2BBB4:
	dc.w	loc_2BBEA-GameScript
	dc.b	EventFlag_NeiWeapons, $00
	dc.b	"Why don't you rest a bit"
	dc.b	$F8
	dc.b	"in this city of Lashute?"
	dc.b	$FC

	even

loc_2BBEA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Your death awaits you in"
	dc.b	$F8
	dc.b	"this city of Lashute!"
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_2BC1E:
	dc.w	loc_2BC4E-GameScript
	dc.b	EventFlag_NeiWeapons, $00
	dc.b	"Orakio's twin brother"
	dc.b	$F8
	dc.b	"Rulakir is king here."
	dc.b	$FC

	even

loc_2BC4E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We wanted Siren and Lune"
	dc.b	$F8
	dc.b	"to start another war,"
	dc.b	$EC
	dc.b	"but we needed Rhys to"
	dc.b	$EC
	dc.b	"bring Satellite back."
	dc.b	$EC
	dc.b	"And that's exactly what"
	dc.b	$EC
	dc.b	"that old fool did!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2BCD8:
	dc.w	loc_2BD0A-GameScript
	dc.b	EventFlag_NeiWeapons, $00
	dc.b	"Hatred keeps Rulakir"
	dc.b	$F8
	dc.b	"alive after 1,000 years!"
	dc.b	$FC

	even

loc_2BD0A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Centuries ago, Laya"
	dc.b	$F8
	dc.b	"locked the passageways"
	dc.b	$EC
	dc.b	"between the domed worlds"
	dc.b	$EC
	dc.b	"of our ship, Alisa ", $BE, $BF, "."
	dc.b	$EC
	dc.b	"But your father and"
	dc.b	$EC
	dc.b	"grandfather opened them"
	dc.b	$EC
	dc.b	"up again, enabling us to"
	dc.b	$EC
	dc.b	"spread evil once more!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2BDC6:
	dc.w	loc_2BDF8-GameScript
	dc.b	EventFlag_NeiWeapons, $00
	dc.b	"Rulakir lost his family"
	dc.b	$F8
	dc.b	"in the wars long ago."
	dc.b	$FC

	even

loc_2BDF8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Dark Force brings your"
	dc.b	$F8
	dc.b	"doom, fools!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2BE20:
	dc.w	loc_2BE48-GameScript
	dc.b	EventFlag_NeiWeapons, $00
	dc.b	"Rulakir dreams of a"
	dc.b	$F8
	dc.b	"peaceful world."
	dc.b	$FC

	even

loc_2BE48:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You fools have done"
	dc.b	$F8
	dc.b	"everything we wanted!"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2BE76:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Waves of blackness wash"
	dc.b	$F8
	dc.b	"over you."
	dc.b	$FC

	even

loc_2BE9C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"At last! We have waited"
	dc.b	$F8
	dc.b	"centuries for Laya's kin"
	dc.b	$EC
	dc.b	"to reach Mystoke, the"
	dc.b	$EC
	dc.b	"Castle of Silence."
	dc.b	$FC

	even

loc_2BEFA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Hurry! Enter the castle"
	dc.b	$F8
	dc.b	"of Mystoke!"
	dc.b	$FC

	even

loc_2BF22:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You will be tested"
	dc.b	$F8
	dc.b	"within the castle gates."
	dc.b	$EC
	dc.b	"If you pass the tests,"
	dc.b	$EC
	dc.b	"Laya's Pendant is yours."
	dc.b	$EC
	dc.b	"All the doors to her"
	dc.b	$EC
	dc.b	"palace will open to you."
	dc.b	$FC

	even

loc_2BFB0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Much will be revealed"
	dc.b	$F8
	dc.b	"within Mystoke Castle!"
	dc.b	$FC

	align 2

loc_2BFE2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Use the Laya Pendant to"
	dc.b	$F8
	dc.b	"hear Laya's final words."
	dc.b	$EC
	dc.b	"Then journey to Aerone,"
	dc.b	$EC
	dc.b	"south of Divisia."
	dc.b	$FC

	even

loc_2C042:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The people of New Mota"
	dc.b	$F8
	dc.b	"keep our past alive."
	dc.b	$FC

	even

loc_2C072:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The others here can tell"
	dc.b	$F8
	dc.b	"you much about our past."
	dc.b	$FC

	even

loc_2C0A8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Endora!"
	dc.b	$FC

	even

loc_2C0C0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"To reach Techna, go down"
	dc.b	$F8
	dc.b	"Cape Dragon Spine, then"
	dc.b	$EC
	dc.b	"cross over the sea. The"
	dc.b	$EC
	dc.b	"Engineers live there."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2C124:
	dc.w	loc_2C17C-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"In the castle of Lensol,"
	dc.b	$F8
	dc.b	"far to the southwest, a"
	dc.b	$EC
	dc.b	"princess is held against"
	dc.b	$EC
	dc.b	"her will."
	dc.b	$FC

	even

loc_2C17C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Techna is also known as"
	dc.b	$F8
	dc.b	"the Castle of Power."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2C1AE:
	dc.w	loc_2C266-GameScript
	dc.b	EventFlag_TheaJoined, EventFlag_LensolGateOpen
	dc.b	"I tried to rescue the"
	dc.b	$F8
	dc.b	"princess a while ago."
	dc.b	$EC
	dc.b	"That place is infested"
	dc.b	$EC
	dc.b	"with powerful monsters."
	dc.b	$EC
	dc.b	"I opened the castle gate"
	dc.b	$EC
	dc.b	"but I couldn't get in."
	dc.b	$EC
	dc.b	"Please rescue her before"
	dc.b	$EC
	dc.b	"it's too late."
	dc.b	$FC

	align 2

loc_2C266:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You're a better man than"
	dc.b	$F8
	dc.b	"I, Prince Ayn."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2C292:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This is the village of"
	dc.b	$F8
	dc.b	"Endora. Welcome!"
	dc.b	$FC

	even

loc_2C2BE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to the village"
	dc.b	$F8
	dc.b	"of Endora."
	dc.b	$FC

	even

loc_2C2E4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The legends say that a"
	dc.b	$F8
	dc.b	"dragon will help those"
	dc.b	$EC
	dc.b	"trying to cross over the"
	dc.b	$EC
	dc.b	"sea to Techna."
	dc.b	$FC

	even

loc_2C33E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I remember these cyborgs"
	dc.b	$F8
	dc.b	"from long ago!"
	dc.b	$FC

	even

loc_2C36A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A long time ago, I saw a"
	dc.b	$F8
	dc.b	"wounded, one-eyed dragon"
	dc.b	$EC
	dc.b	"fly out from Cape Dragon"
	dc.b	$EC
	dc.b	"Spine toward the sea."
	dc.b	$FC

	even

loc_2C3D0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We welcome you to"
	dc.b	$F8
	dc.b	"Lensol, travelers."
	dc.b	$FC

	align 2

loc_2C3FA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We've always assumed our"
	dc.b	$F8
	dc.b	"enemies were Layan, but"
	dc.b	$EC
	dc.b	"I think we've been wrong"
	dc.b	$EC
	dc.b	"all these years."
	dc.b	$FC

	even

loc_2C45A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Technicians used to live"
	dc.b	$F8
	dc.b	"in this dome-world."
	dc.b	$EC
	dc.b	"Since the war 1,000"
	dc.b	$EC
	dc.b	"years ago, however, all"
	dc.b	$EC
	dc.b	"scientific knowledge has"
	dc.b	$EC
	dc.b	"been lost."
	dc.b	$FC

	even

loc_2C4DC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The island of Techna"
	dc.b	$F8
	dc.b	"lies to the northeast."
	dc.b	$EC
	dc.b	"They may have tales of"
	dc.b	$EC
	dc.b	"Satellite."
	dc.b	$FC

	even

loc_2C52E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE  \II'm Lune; I once"
	dc.b	$F8
	dc.b	"fought in Laya's army."
	dc.b	$EC
	dc.b	"Orakio banished me here"
	dc.b	$EC
	dc.b	"almost 1,000 years ago."
	dc.b	$EC
	dc.b	"For centuries I bided my"
	dc.b	$EC
	dc.b	"time in cryogenic sleep."
	dc.b	$EC
	dc.b	"I recently awoke and"
	dc.b	$EC
	dc.b	"decided to take revenge."
	dc.b	$EC
	dc.b	"But I now regret the"
	dc.b	$EC
	dc.b	"trouble I have caused.\I"
	dc.b	$FC

	even

loc_2C61E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"ALAIR \II'm Alair, Lune's"
	dc.b	$F8
	dc.b	"sister. I also have been"
	dc.b	$EC
	dc.b	"frozen in a cryogenics"
	dc.b	$EC
	dc.b	"pod for 1,000 years."
	dc.b	$EC
	dc.b	"When I woke up, I was"
	dc.b	$EC
	dc.b	"kidnapped by Orakians."
	dc.b	$EC
	dc.b	"Of course, that made my"
	dc.b	$EC
	dc.b	"brother more furious."
	dc.b	$EC
	dc.b	"Yes, we were the ones"
	dc.b	$EC
	dc.b	"who destroyed Satera."
	dc.b	$EC
	dc.b	"But we're not behind the"
	dc.b	$EC
	dc.b	"recent monster attacks."
	dc.b	$EC
	dc.b	"We hope you can forgive"
	dc.b	$EC
	dc.b	"us for our past errors.\I"
	dc.b	$FC

	even

loc_2C76A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The aero parts for that"
	dc.b	$F8
	dc.b	"Wren are in the dungeon."
	dc.b	$FC

	align 2

loc_2C7A0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Down the stairs are the"
	dc.b	$F8
	dc.b	"aero parts for the Wren."
	dc.b	$EC
	dc.b	"Use them to reach the"
	dc.b	$EC
	dc.b	"sky city on Frigidia."
	dc.b	$EC
	dc.b	"There you may find the"
	dc.b	$EC
	dc.b	"strength to combat evil."
	dc.b	$FC

	even

loc_2C832:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Be warned, strangers,"
	dc.b	$F8
	dc.b	"Lune is very depressed."
	dc.b	$FC

	even

loc_2C864:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \IOnce again, evil"
	dc.b	$F8
	dc.b	"stalks our world, Adan."
	dc.b	$EC
	dc.b	"I am sending Kara to"
	dc.b	$EC
	dc.b	"accompany your group."
	dc.b	$EC
	dc.b	"She has my Lune Slicer;"
	dc.b	$EC
	dc.b	"I think you'll need it.\I"
	dc.b	$FC

	even

loc_2C8F4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"ALAIR \IA long time ago,"
	dc.b	$F8
	dc.b	"your father rescued me."
	dc.b	$EC
	dc.b	"I'm sure you can protect"
	dc.b	$EC
	dc.b	"my niece, Kara.\I"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"The floating city has"
	dc.b	$F8
	dc.b	"wise sages, I'm told."
	dc.b	$EC
	dc.b	"Use the aero parts in"
	dc.b	$EC
	dc.b	"the dungeon to reach it."
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"What caused that strong"
	dc.b	$F8
	dc.b	"earthquake, you wonder?"
	dc.b	$EC
	dc.b	"It was another ship,"
	dc.b	$EC
	dc.b	"identical to ours!"
	dc.b	$EC
	dc.b	"Without warning, someone"
	dc.b	$EC
	dc.b	"on our ship attacked."
	dc.b	$EC
	dc.b	"They zapped us just as"
	dc.b	$EC
	dc.b	"their ship vaporized."
	dc.b	$EC
	dc.b	"That's how we were"
	dc.b	$EC
	dc.b	"shoved out of our orbit."
	dc.b	$EC
	dc.b	"I wonder who they were"
	dc.b	$EC
	dc.b	"and who attacked them?"
	dc.b	$FC

	even

loc_2CAC4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IAron, please take"
	dc.b	$F8
	dc.b	"Mieu and Wren with you."
	dc.b	$EC
	dc.b	"Find out what happened"
	dc.b	$EC
	dc.b	"with those spaceships."
	dc.b	$EC
	dc.b	"I'm afraid there's more"
	dc.b	$EC
	dc.b	"trouble in the works.\I"
	dc.b	$FC

	align 2

loc_2CB56:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LUNE \IAron, we seem to"
	dc.b	$F8
	dc.b	"be at war once again."
	dc.b	$EC
	dc.b	"Take your cousin Kara"
	dc.b	$EC
	dc.b	"with you on your quest."
	dc.b	$EC
	dc.b	"Find out what's going"
	dc.b	$EC
	dc.b	"on, but be careful!\I"
	dc.b	$FC

	even

loc_2CBE0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"ALAIR \ILook out for each"
	dc.b	$F8
	dc.b	"other, Aron and Kara.\I"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IAron, uncover all"
	dc.b	$F8
	dc.b	"you can in the domes."
	dc.b	$EC
	dc.b	"Question everyone you"
	dc.b	$EC
	dc.b	"meet down there.\I"
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren's aero parts can be"
	dc.b	$F8
	dc.b	"found in the dungeon."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"We're afraid that you'll"
	dc.b	$F8
	dc.b	"die down there."
	dc.b	$FC

	align 2

loc_2CCD0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \IDon't worry, Nial,"
	dc.b	$F8
	dc.b	"I will protect Landen."
	dc.b	$EC
	dc.b	"Cille and Shusoran are"
	dc.b	$EC
	dc.b	"Layan lands, of course,"
	dc.b	$EC
	dc.b	"but Layans can be found"
	dc.b	$EC
	dc.b	"elsewhere as well.\I"
	dc.b	$FC

	align 2

loc_2CD60:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LENA \IPlease save my"
	dc.b	$F8
	dc.b	"homeland, Nial.\I"
	dc.b	$FC

	even

loc_2CD8A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune's army must be"
	dc.b	$F8
	dc.b	"stopped or we're doomed!"
	dc.b	$FC

	even

loc_2CDBC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya's monsters came"
	dc.b	$F8
	dc.b	"from the west, they say."
	dc.b	$FC

	even

loc_2CDEE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Satera has been wiped"
	dc.b	$F8
	dc.b	"out by that vile Lune!"
	dc.b	$FC

	align 2

loc_2CE20:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This awful news has"
	dc.b	$F8
	dc.b	"devastated your mother."
	dc.b	$FC

	even

loc_2CE50:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SARI \IWe must end this"
	dc.b	$F8
	dc.b	"war before more die."
	dc.b	$EC
	dc.b	"With Laya's Treasure we"
	dc.b	$EC
	dc.b	"can stop the fighting."
	dc.b	$EC
	dc.b	"To find Laya's Treasure,"
	dc.b	$EC
	dc.b	"use an ancient machine"
	dc.b	$EC
	dc.b	"that can be found in a"
	dc.b	$EC
	dc.b	"world to the southwest.\I"
	dc.b	$FC

	align 2

loc_2CF10:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You're the only descen-"
	dc.b	$F8
	dc.b	"dant of Orakio left!"
	dc.b	$FC

	align 2

loc_2CF42:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The western part of this"
	dc.b	$F8
	dc.b	"world belongs to Lune."
	dc.b	$EC
	dc.b	"If you head that way, be"
	dc.b	$EC
	dc.b	"very careful!"
	dc.b	$FC

	align 2

loc_2CF9E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune's army has built a"
	dc.b	$F8
	dc.b	"bridge over the river."
	dc.b	$EC
	dc.b	"He is looking for Laya's"
	dc.b	$EC
	dc.b	"Treasure in Aridia."
	dc.b	$FC

	even

loc_2CFFE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Sari has countered every"
	dc.b	$F8
	dc.b	"one of Lune's attacks."
	dc.b	$EC
	dc.b	"Thank Orakio for Sari!"
	dc.b	$EC
	dc.b	"Lune can't beat her!"
	dc.b	$FC

	even

loc_2D05E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"AYN \ICrys, you must"
	dc.b	$F8
	dc.b	"destroy Siren for good!"
	dc.b	$EC
	dc.b	"Then return our ship to"
	dc.b	$EC
	dc.b	"its proper course.\I"
	dc.b	$FC

	even

loc_2D0BA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SARI \IDefend your people"
	dc.b	$F8
	dc.b	"and do not fail them!\I"
	dc.b	$FC

	even

loc_2D0EE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Pilots can be found in a"
	dc.b	$F8
	dc.b	"world past Satera."
	dc.b	$FC

	even

loc_2D11E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"To the west is Lune's"
	dc.b	$F8
	dc.b	"army of monsters."
	dc.b	$FC

	even

loc_2D14A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IAdan and Gwyn--"
	dc.b	$F8
	dc.b	"visit our friend Lune."
	dc.b	$EC
	dc.b	"He may know what's"
	dc.b	$EC
	dc.b	"going on.\I"
	dc.b	$FC

	align 2

loc_2D19A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LAYA \ITake care, kids,"
	dc.b	$F8
	dc.b	"and mind your manners.\I"
	dc.b	$FC

	even

loc_2D1CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Beware! Gwyn's dream is"
	dc.b	$F8
	dc.b	"a premonition of danger!"
	dc.b	$FC

	even

loc_2D204:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Let us know what you"
	dc.b	$F8
	dc.b	"find out."
	dc.b	$FC

	align 2

loc_2D228:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Visit Dahlia; Lune may"
	dc.b	$F8
	dc.b	"have some answers."
	dc.b	$FC

	even

loc_2D256:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Hurry back, Aron. Our"
	dc.b	$F8
	dc.b	"land needs you."
	dc.b	$FC

	even

loc_2D280:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Prince Nial, run before"
	dc.b	$F8
	dc.b	"Lune's army finds you!"
	dc.b	$EC
	dc.b	"Even now they're pouring"
	dc.b	$EC
	dc.b	"out of a southern cave."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2D2E4:
	dc.w	loc_2D340-GameScript
	dc.b	EventFlag_AynShusoranBoat, $00
	dc.b	"Right now, your father's"
	dc.b	$F8
	dc.b	"land is being invaded."
	dc.b	$EC
	dc.b	"No one knows who's"
	dc.b	$EC
	dc.b	"responsible for it."
	dc.b	$FC

	even

loc_2D340:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Everywhere you go, there"
	dc.b	$F8
	dc.b	"seems to be fighting."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2D374:
	dc.w	loc_2D39E-GameScript
	dc.b	EventFlag_AynShusoranBoat, $00
	dc.b	"I wonder who is"
	dc.b	$F8
	dc.b	"attacking your lands?"
	dc.b	$FC

	even

loc_2D39E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Cille and Shusoran are"
	dc.b	$F8
	dc.b	"in flames!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2D3C4:
	dc.w	loc_2D41E-GameScript
	dc.b	EventFlag_AynShusoranBoat, $00
	dc.b	"Our people are not at"
	dc.b	$F8
	dc.b	"war with yours, Prince."
	dc.b	$EC
	dc.b	"We have lived in peace"
	dc.b	$EC
	dc.b	"for many years."
	dc.b	$FC

	align 2

loc_2D41E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Some people from Cille"
	dc.b	$F8
	dc.b	"and Shusoran escaped."
	dc.b	$FC
; -------------------------------------------------
	align 2
; -------------------------------------------------
loc_2D450:
	dc.w	loc_2D47C-GameScript
	dc.b	EventFlag_AynShusoranBoat, $00
	dc.b	"Satellite is nothing but"
	dc.b	$F8
	dc.b	"an old legend!"
	dc.b	$FC

	even

loc_2D47C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I hope you find the"
	dc.b	$F8
	dc.b	"legendary Satellite."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2D4AA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Agoe Castle!"
	dc.b	$F8
	dc.b	$FC

	even

loc_2D4C8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Many strange things have"
	dc.b	$F8
	dc.b	"been happening lately."
	dc.b	$FC

	even

loc_2D4FC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Visit Sage Isle in this"
	dc.b	$F8
	dc.b	"dome-world."
	dc.b	$FC

	even

loc_2D524:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Cyborgs have been seen"
	dc.b	$F8
	dc.b	"crossing the sea."
	dc.b	$FC

	align 2

loc_2D552:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LYLE \II'd like to come"
	dc.b	$F8
	dc.b	"with you, Ayn, but I'm"
	dc.b	$EC
	dc.b	"afraid that my people"
	dc.b	$EC
	dc.b	"need me right now.\I"
	dc.b	$FC

	even

loc_2D5AE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"THEA \IHello. I'm Thea,"
	dc.b	$F8
	dc.b	"Lyle's daughter.\I"
	dc.b	$FC

	even

loc_2D5DC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lyle lost one of his"
	dc.b	$F8
	dc.b	"eyes in a recent battle."
	dc.b	$FC

	even

loc_2D60E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Shusoran will win as"
	dc.b	$F8
	dc.b	"long as Lyle is with us!"
	dc.b	$FC

	even

loc_2D640:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"How can we hope to win"
	dc.b	$F8
	dc.b	"against the Orakians?"
	dc.b	$FC

	align 2

loc_2D672:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"King Lyle will lead us"
	dc.b	$F8
	dc.b	"to victory, never fear."
	dc.b	$FC

	even

loc_2D6A6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \ILook for"
	dc.b	$F8
	dc.b	"Satellite, my son!\I"
	dc.b	$FC

	align 2

loc_2D6CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MAIA \IThis land must be"
	dc.b	$F8
	dc.b	"saved. Hurry, Ayn!\I"
	dc.b	$FC

	even

loc_2D6FE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The Orakians will send"
	dc.b	$F8
	dc.b	"their cyborgs to fight."
	dc.b	$FC

	align 2

loc_2D732:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Old tales tell of a"
	dc.b	$F8
	dc.b	"Satellite of true peace."
	dc.b	$EC
	dc.b	"Only the chosen ones can"
	dc.b	$EC
	dc.b	"dwell there."
	dc.b	$FC

	even

loc_2D78A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our lives depend on your"
	dc.b	$F8
	dc.b	"courage, Prince Ayn."
	dc.b	$FC

	even

loc_2D7BC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Armies of robots are"
	dc.b	$F8
	dc.b	"surrounding our castle!"
	dc.b	$FC

	align 2

loc_2D7EE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The eastern cave is home"
	dc.b	$F8
	dc.b	"to monsters and cyborgs."
	dc.b	$EC
	dc.b	"There's something beyond"
	dc.b	$EC
	dc.b	"the cave."
	dc.b	$FC

	align 2

loc_2D848:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A long time ago, a lad"
	dc.b	$F8
	dc.b	"who looked just like you"
	dc.b	$EC
	dc.b	"entered the castle and"
	dc.b	$EC
	dc.b	"rescued a woman."
	dc.b	$FC

	even

loc_2D8A4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A long time ago, a"
	dc.b	$F8
	dc.b	"dragon grabbed a woman"
	dc.b	$EC
	dc.b	"out of the castle"
	dc.b	$EC
	dc.b	"dungeon and flew away."
	dc.b	$EC
	dc.b	"But I managed to leave a"
	dc.b	$EC
	dc.b	"scar on its face!"
	dc.b	$FC

	even

loc_2D926:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Rulakir is Orakio's twin"
	dc.b	$F8
	dc.b	"brother."
	dc.b	$FC

	even

loc_2D94C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"There is a cave that"
	dc.b	$F8
	dc.b	"lies far to the south."
	dc.b	$EC
	dc.b	"That cave leads to"
	dc.b	$EC
	dc.b	"another domed world."
	dc.b	$EC
	dc.b	"Cyborgs and monsters"
	dc.b	$EC
	dc.b	"are coming from there."
	dc.b	$FC

	even

loc_2D9D0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We haven't seen a cyborg"
	dc.b	$F8
	dc.b	"in Techna for years!"
	dc.b	$FC

	even

loc_2DA02:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This world used to be"
	dc.b	$F8
	dc.b	"called the Engine Room."
	dc.b	$FC

	even

loc_2DA34:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"In the dungeon of this"
	dc.b	$F8
	dc.b	"dome is a huge engine."
	dc.b	$EC
	dc.b	"Some say there once was"
	dc.b	$EC
	dc.b	"a shuttlecraft down"
	dc.b	$EC
	dc.b	"there for trips to and"
	dc.b	$EC
	dc.b	"from the moon Azura."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2DABE:
	dc.w	loc_2DAF2-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"I'm not sure that we're"
	dc.b	$F8
	dc.b	"doing the right thing."
	dc.b	$FC

	even

loc_2DAF2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I'm sure Lune will"
	dc.b	$F8
	dc.b	"accept my apology."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2DB1C:
	dc.w	loc_2DB48-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"Welcome, Orakians, to"
	dc.b	$F8
	dc.b	"our proud castle!"
	dc.b	$FC

	even

loc_2DB48:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We're in for it when"
	dc.b	$F8
	dc.b	"Lune finds us!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2DB70:
	dc.w	loc_2DBA4-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"We've kidnapped Lune's"
	dc.b	$F8
	dc.b	"sister! Smart move, eh?"
	dc.b	$FC

	even

loc_2DBA4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I didn't kidnap Alair!"
	dc.b	$F8
	dc.b	"Don't blame me!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2DBD0:
	dc.w	loc_2DBF8-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"Alair will never leave"
	dc.b	$F8
	dc.b	"our dungeon."
	dc.b	$FC

	even

loc_2DBF8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune might attack at any"
	dc.b	$F8
	dc.b	"moment! Run away!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2DC28:
	dc.w	loc_2DC54-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"That Layan, Alair, gives"
	dc.b	$F8
	dc.b	"me the creeps."
	dc.b	$FC

	even

loc_2DC54:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I hope Lune isn't too"
	dc.b	$F8
	dc.b	"mad at us."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2DC7A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our ancestors piloted"
	dc.b	$F8
	dc.b	"this spaceship long ago."
	dc.b	$EC
	dc.b	"But over the years, much"
	dc.b	$EC
	dc.b	"knowledge has been lost."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Rulakir has returned! He"
	dc.b	$F8
	dc.b	"is Orakio's twin!"
	dc.b	$FC

	align 2

loc_2DD10:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to glorious"
	dc.b	$F8
	dc.b	"Divisia-town, strangers!"
	dc.b	$EC
	dc.b	"Did you know that Wren"
	dc.b	$EC
	dc.b	"cyborgs can transform?"
	dc.b	$EC
	dc.b	"You must find the parts"
	dc.b	$EC
	dc.b	"to fly, swim, and dive."
	dc.b	$FC

	align 2

loc_2DDA0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Real pilots are almost"
	dc.b	$F8
	dc.b	"nonexistent nowadays."
	dc.b	$EC
	dc.b	"Much knowledge has been"
	dc.b	$EC
	dc.b	"lost since they left us."
	dc.b	$EC
	dc.b	"Not to worry, though,"
	dc.b	$EC
	dc.b	"Rulakir is still around."
	dc.b	$FC

	align 2
; -------------------------------------------------
loc_2DE32:
	dc.w	loc_2DEEE-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"LYLE \IYou must rescue my"
	dc.b	$F8
	dc.b	"daughter, Thea, for me."
	dc.b	$EC
	dc.b	"She has been taken to"
	dc.b	$EC
	dc.b	"the east by our enemies."
	dc.b	$EC
	dc.b	"The key to the eastern"
	dc.b	$EC
	dc.b	"world is in this chest."
	dc.b	$EC
	dc.b	"The Dragon's Tear will"
	dc.b	$EC
	dc.b	"unlock the cave.\I"
	dc.b	$FC

	even

loc_2DEEE:
	dc.w	loc_2DF50-GameScript
	dc.b	EventFlag_SariJoined, $00
	dc.b	"LYLE \IAyn, words can't"
	dc.b	$F8
	dc.b	"express my gratitude."
	dc.b	$EC
	dc.b	"Take the Twins' Ruby; it"
	dc.b	$EC
	dc.b	"opens the Landen path.\I"
	dc.b	$FC

	even

loc_2DF50:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"LYLE \IGo to the place"
	dc.b	$F8
	dc.b	"called Cape Dragon Spine"
	dc.b	$EC
	dc.b	"to the east. Hurry, no"
	dc.b	$EC
	dc.b	"time to waste.\I"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2DFAA:
	dc.w	loc_2DFDE-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"RHYS \IAyn, please help"
	dc.b	$F8
	dc.b	"my friend--rescue Thea!\I"
	dc.b	$FC

	even

loc_2DFDE:
	dc.w	loc_2E004-GameScript
	dc.b	EventFlag_SariJoined, $00
	dc.b	"RHYS \IYou've done well,"
	dc.b	$F8
	dc.b	"my son.\I"
	dc.b	$FC

	even

loc_2E004:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RHYS \ILook for the"
	dc.b	$F8
	dc.b	"Satellite of Peace!\I"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2E030:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MAIA \IYou are our last"
	dc.b	$F8
	dc.b	"hope. Be brave, Ayn.\I"
	dc.b	$FC

	even
; -------------------------------------------------
loc_2E062:
	dc.w	loc_2E094-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"We're all that's left of"
	dc.b	$F8
	dc.b	"Cille and Shusoran."
	dc.b	$FC

	even

loc_2E094:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You're my hero!"
	dc.b	$F8
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_2E0AA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Prince Ayn, your family"
	dc.b	$F8
	dc.b	"awaits you in the cave."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2E0DE:
	dc.w	loc_2E10E-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"We had no choice but to"
	dc.b	$F8
	dc.b	"run for our lives."
	dc.b	$FC

	even

loc_2E10E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Three cheers for Ayn!"
	dc.b	$F8
	dc.b	"Three cheers for Thea!"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2E140:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lyle's in bad shape. He"
	dc.b	$F8
	dc.b	"may not live very long."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2E174:
	dc.w	loc_2E1AA-GameScript
	dc.b	EventFlag_TheaJoined, $00
	dc.b	"Lyle was wounded by the"
	dc.b	$F8
	dc.b	"cyborgs. They took Thea."
	dc.b	$FC

	align 2

loc_2E1AA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The people of Shusoran"
	dc.b	$F8
	dc.b	"are in your debt."
	dc.b	$FC
; -------------------------------------------------
	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"We're all that's left of"
	dc.b	$F8
	dc.b	"Cille and Shusoran."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"An army of cyborgs wiped"
	dc.b	$F8
	dc.b	"out Cille and Shusoran."
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Cille was destroyed and"
	dc.b	$F8
	dc.b	"Thea was taken by the"
	dc.b	$EC
	dc.b	"cyborgs; Lyle tried to"
	dc.b	$EC
	dc.b	"rescue her by himself."
	dc.b	$FC

	even

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lyle feels that he's let"
	dc.b	$F8
	dc.b	"his people down."
	dc.b	$FC

	even

loc_2E2CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"All opponents of Lune"
	dc.b	$F8
	dc.b	"are welcome here."
	dc.b	$FC

	even

loc_2E2FA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Someone brought Dahlia"
	dc.b	$F8
	dc.b	"back to its orbit."
	dc.b	$EC
	dc.b	"That's why Lune and"
	dc.b	$EC
	dc.b	"Alair woke up!"
	dc.b	$FC

	align 2

loc_2E34C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Even Orakio had a tough"
	dc.b	$F8
	dc.b	"time defeating Lune."
	dc.b	$FC

	even

loc_2E37E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune's army is looking"
	dc.b	$F8
	dc.b	"for something in Aridia."
	dc.b	$EC
	dc.b	"We want to go to Aridia,"
	dc.b	$EC
	dc.b	"but we don't know how."
	dc.b	$EC
	dc.b	"Maybe the Twins' Ruby"
	dc.b	$EC
	dc.b	"can get us there."
	dc.b	$FC

	even

loc_2E40A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Orakio banished Lune and"
	dc.b	$F8
	dc.b	"Alair to faraway Dahlia."
	dc.b	$EC
	dc.b	"Lune and Alair dreamed"
	dc.b	$EC
	dc.b	"of taking revenge on us,"
	dc.b	$EC
	dc.b	"so they froze themselves"
	dc.b	$EC
	dc.b	"until the moon returned."
	dc.b	$FC

	even

loc_2E4A2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We welcome you to the"
	dc.b	$F8
	dc.b	"Castle of Skyhaven."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2E4D0:
	dc.w	loc_2E4FE-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"My masters have waited"
	dc.b	$F8
	dc.b	"centuries for you."
	dc.b	$FC

	even

loc_2E4FE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"My masters await you"
	dc.b	$F8
	dc.b	"within the castle."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E52A:
	dc.w	loc_2E590-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"The ultimate evil dwells"
	dc.b	$F8
	dc.b	"on a floating city in"
	dc.b	$EC
	dc.b	"the barren wastelands of"
	dc.b	$EC
	dc.b	"the dome named Terminus."
	dc.b	$FC

	align 2

loc_2E590:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You may indeed be ready"
	dc.b	$F8
	dc.b	"for the task ahead."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E5C0:
	dc.w	loc_2E622-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"A word of ultimate power"
	dc.b	$F8
	dc.b	"has been lost for ages."
	dc.b	$EC
	dc.b	"This name can empower"
	dc.b	$EC
	dc.b	"the weapons of legend."
	dc.b	$FC

	even

loc_2E622:
	dc.w	0
	dc.b	$FF, $E7
	dc.b	"Nei is the word of"
	dc.b	$F8
	dc.b	"ultimate power."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E64A:
	dc.w	loc_2E6A2-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"To discover the lost"
	dc.b	$F8
	dc.b	"name, you must first"
	dc.b	$EC
	dc.b	"find all five weapons of"
	dc.b	$EC
	dc.b	"ancient legend."
	dc.b	$FC

	align 2

loc_2E6A2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our task is over; yours"
	dc.b	$F8
	dc.b	"truly begins now."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E6D0:
	dc.w	loc_2E758-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"The ancient heroes used"
	dc.b	$F8
	dc.b	"the legendary weapons."
	dc.b	$EC
	dc.b	"These are Orakio's"
	dc.b	$EC
	dc.b	"Sword, Miun's Claw,"
	dc.b	$EC
	dc.b	"Siren's Shot, Laya's"
	dc.b	$EC
	dc.b	"Bow, and Lune's Slicer."
	dc.b	$FC

	even

loc_2E758:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Use the Nei weapons to"
	dc.b	$F8
	dc.b	"destroy Dark Force."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E788:
	dc.w	loc_2E874-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"The name of power can be"
	dc.b	$F8
	dc.b	"learned on Sage Isle, in"
	dc.b	$EC
	dc.b	"Draconia, the world of"	; Hmm... Isn't that in Aquatica?
	dc.b	$EC
	dc.b	"old Cille and Shusoran."
	dc.b	$EC
	dc.b	"Our dungeon holds the"
	dc.b	$EC
	dc.b	"aqua parts for Wren."
	dc.b	$EC
	dc.b	"These will enable you to"
	dc.b	$EC
	dc.b	"wrest Orakio's Sword"
	dc.b	$EC
	dc.b	"from its watery tomb and"
	dc.b	$EC
	dc.b	"to visit Sage Isle."
	dc.b	$FC

	even

loc_2E874:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Equip yourselves with"
	dc.b	$F8
	dc.b	"the Nei weapons."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2E8A0:
	dc.w	loc_2E8D6-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"Go through the castle to"
	dc.b	$F8
	dc.b	"reach Southern Divisia."
	dc.b	$FC

	align 2

loc_2E8D6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune's going to stomp us"
	dc.b	$F8
	dc.b	"flat!"
	dc.b	$FC
; -------------------------------------------------
	align 2

loc_2E8FA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune and Alair were"
	dc.b	$F8
	dc.b	"frozen for 1,000 years!"
	dc.b	$FC

	even
; -------------------------------------------------
loc_2E92A:
	dc.w	loc_2E95A-GameScript
	dc.b	EventFlag_AlairRescue, $00
	dc.b	"Lune's sister Alair is"
	dc.b	$F8
	dc.b	"in Divisia's castle."
	dc.b	$FC

	even

loc_2E95A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I hope Alair and Lune"
	dc.b	$F8
	dc.b	"don't attack Divisia."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2E98A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"A rebel army trains in a"
	dc.b	$F8
	dc.b	"cave far to the west."
	dc.b	$FC

	even

loc_2E9BE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The rebels want to go to"
	dc.b	$F8
	dc.b	"the lands of Aridia."
	dc.b	$EC
	dc.b	"They must enter the cave"
	dc.b	$EC
	dc.b	"southeast of Landen."
	dc.b	$FC

	even

loc_2EA1E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Northern"
	dc.b	$F8
	dc.b	"Divisia."
	dc.b	$FC

	even

loc_2EA40:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Enter the castle to"
	dc.b	$F8
	dc.b	"reach Southern Divisia."
	dc.b	$EC
	dc.b	"A pilot lives beyond the"
	dc.b	$EC
	dc.b	"bay past our town."
	dc.b	$FC

	even

loc_2EA9C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"To reach Aerone, you"
	dc.b	$F8
	dc.b	"need Laya's Pendant."
	dc.b	$FC

	even

loc_2EACA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our people once piloted"
	dc.b	$F8
	dc.b	"this great spaceship."
	dc.b	$EC
	dc.b	"Aerone is rumored to"
	dc.b	$EC
	dc.b	"have pilots even now."
	dc.b	$EC
	dc.b	"Some rebels are in a"
	dc.b	$EC
	dc.b	"cave far to the west."
	dc.b	$EC
	dc.b	"The sub parts for Wren"
	dc.b	$EC
	dc.b	"are also in that cave."
	dc.b	$EC
	dc.b	"Use these to find Laya's"
	dc.b	$EC
	dc.b	"Treasure in Aridia."
	dc.b	$FC

	even

loc_2EBAE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to the village"
	dc.b	$F8
	dc.b	"of Aerone."
	dc.b	$FC

	even

loc_2EBD4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Lune and Alair live in"
	dc.b	$F8
	dc.b	"the purple moon, Dahlia."
	dc.b	$FC

	even

loc_2EC08:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Take our rocket shuttle"
	dc.b	$F8
	dc.b	"to reach distant Dahlia."
	dc.b	$EC
	dc.b	"Follow the path east to"
	dc.b	$EC
	dc.b	"find the shuttle."
	dc.b	$FC

	even

loc_2EC68:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Azura and Dahlia are"
	dc.b	$F8
	dc.b	"man-made satellites that"
	dc.b	$EC
	dc.b	"orbit around our"
	dc.b	$EC
	dc.b	"homeworld, Alisa ", $BE, $BF, "."
	dc.b	$FC

	even

loc_2ECC0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Go east on this path to"
	dc.b	$F8
	dc.b	"see the real Alisa ", $BE, $BF, "."
	dc.b	$FC

	align 2

loc_2ECF4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Welcome to Aerone, the"
	dc.b	$F8
	dc.b	"last home of the pilots."
	dc.b	$EC
	dc.b	"East on this path leads"
	dc.b	$EC
	dc.b	"to the moon, Dahlia."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2ED56:
	dc.w	loc_2ED84-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"Only vast power could"
	dc.b	$F8
	dc.b	"have blasted Azura."
	dc.b	$FC

	even

loc_2ED84:
	dc.w	loc_2EE1A-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"Siren has made our world"
	dc.b	$F8
	dc.b	"veer toward the sun."
	dc.b	$EC
	dc.b	"We'll all die unless we"
	dc.b	$EC
	dc.b	"change our course soon."
	dc.b	$FC

	even

loc_2EDE6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The explosion forced our"
	dc.b	$F8
	dc.b	"ship to alter course."
	dc.b	$FC

	even

loc_2EE1A:
	dc.w	loc_2EDE6-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"A dream in which you"
	dc.b	$F8
	dc.b	"fall into a dark pit?"
	dc.b	$EC
	dc.b	"We've heard we are aimed"
	dc.b	$EC
	dc.b	"toward a black hole."
	dc.b	$EC
	dc.b	"Perhaps your dream is a"
	dc.b	$EC
	dc.b	"warning of our fate!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2EEA4:
	dc.w	loc_2EF0A-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"The beam that struck the"
	dc.b	$F8
	dc.b	"moon Azura came from a"
	dc.b	$EC
	dc.b	"dome that is said to be"
	dc.b	$EC
	dc.b	"a barren land of horror."
	dc.b	$FC

	even

loc_2EF0A:
	dc.w	loc_2EF6A-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"We're heading right for"
	dc.b	$F8
	dc.b	"the sun! Do something!"
	dc.b	$FC

	align 2

loc_2EF3E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"There's nothing beyond"
	dc.b	$F8
	dc.b	"this spaceship."
	dc.b	$FC

	even

loc_2EF6A:
	dc.w	loc_2EF3E-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"That explosion knocked"
	dc.b	$F8
	dc.b	"us off our course. Maybe"
	dc.b	$EC
	dc.b	"your dream means there's"
	dc.b	$EC
	dc.b	"a black hole ahead!"
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2EFCC:
	dc.w	loc_2EFF8-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"The explosion of Azura"
	dc.b	$F8
	dc.b	"lit up the sky!"
	dc.b	$FC

	even

loc_2EFF8:
	dc.w	loc_2F0B4-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"We're trying to get off"
	dc.b	$F8
	dc.b	"our collision course,"
	dc.b	$EC
	dc.b	"but there's something"
	dc.b	$EC
	dc.b	"opposing our efforts."
	dc.b	$FC

	even

loc_2F056:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Something is preventing"
	dc.b	$F8
	dc.b	"us from changing course."
	dc.b	$EC
	dc.b	"You must get rid of it"
	dc.b	$EC
	dc.b	"before we crash."
	dc.b	$FC

	even

loc_2F0B4:
	dc.w	loc_2F056-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"Something is preventing"
	dc.b	$F8
	dc.b	"us from changing course."
	dc.b	$EC
	dc.b	"You must get rid of it"
	dc.b	$EC
	dc.b	"before we crash."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2F112:
	dc.w	loc_2F13E-GameScript
	dc.b	EventFlag_SeanGeneration, $00
	dc.b	"The explosion of Azura"
	dc.b	$F8
	dc.b	"was spectacular!"
	dc.b	$FC

	even

loc_2F13E:
	dc.w	loc_2F19C-GameScript
	dc.b	EventFlag_CrysGeneration, $00
	dc.b	"We'll burn up unless we"
	dc.b	$F8
	dc.b	"change course soon!"
	dc.b	$FC

	even

loc_2F16E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"It's no use, we're"
	dc.b	$F8
	dc.b	"doomed no matter what."
	dc.b	$FC

	even

loc_2F19C:
	dc.w	loc_2F16E-GameScript
	dc.b	EventFlag_AdanGeneration, $00
	dc.b	"I wonder how it'll be to"
	dc.b	$F8
	dc.b	"enter a black hole?"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2F1CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"People call this place"
	dc.b	$F8
	dc.b	"Sage Isle."
	dc.b	$FC

	even
; -------------------------------------------------
loc_2F1F4:
	dc.w	loc_2F252-GameScript
	dc.b	EventFlag_SirenSageIsle2, $00
	dc.b	"The lost word cannot be"
	dc.b	$F8
	dc.b	"revealed until all five"
	dc.b	$EC
	dc.b	"legendary weapons are"
	dc.b	$EC
	dc.b	"gathered together."
	dc.b	$FC

	even

loc_2F252:
	dc.w	loc_2F282-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"Who knows if your puny"
	dc.b	$F8
	dc.b	"weapons are enough?"
	dc.b	$FC

	even

loc_2F282:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Untold suffering awaits"
	dc.b	$F8
	dc.b	"us all if you fail."
	dc.b	$FC
; -------------------------------------------------
	even
; -------------------------------------------------
loc_2F2B2:
	dc.w	loc_2F310-GameScript
	dc.b	EventFlag_SirenSageIsle2, $00
	dc.b	"You must show us all of"
	dc.b	$F8
	dc.b	"the legendary weapons"
	dc.b	$EC
	dc.b	"before you learn the"
	dc.b	$EC
	dc.b	"ancient word of power!"
	dc.b	$FC

	even

loc_2F310:
	dc.w	loc_2F364-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"All the legendary"
	dc.b	$F8
	dc.b	"weapons have been"
	dc.b	$EC
	dc.b	"gathered for the first"
	dc.b	$EC
	dc.b	"time in 1,000 years."
	dc.b	$FC

	even

loc_2F364:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Orakio's twin brother"
	dc.b	$F8
	dc.b	"turned into a fiend."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2F394:
	dc.w	loc_2F3EA-GameScript
	dc.b	EventFlag_SirenSageIsle2, $00
	dc.b	"Once all five of the"
	dc.b	$F8
	dc.b	"legendary weapons were"
	dc.b	$EC
	dc.b	"together, but now they"
	dc.b	$EC
	dc.b	"are scattered."
	dc.b	$FC

	even

loc_2F3EA:
	dc.w	loc_2F41E-GameScript
	dc.b	EventFlag_AncientWordRevealed, $00
	dc.b	"You are worthy to hear"
	dc.b	$F8
	dc.b	"the ancient word spoken."
	dc.b	$FC

	even

loc_2F41E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Return to Skyhaven to"
	dc.b	$F8
	dc.b	"empower your weapons."
	dc.b	$FC
; -------------------------------------------------
	even

loc_2F44E:
	dc.w	loc_2F484-GameScript
	dc.b	EventFlag_SirenSageIsle2, $00
	dc.b	"To learn the lost word,"
	dc.b	$F8
	dc.b	"collect all the weapons!"
	dc.b	$FC

	align 2

loc_2F484:
	dc.w	loc_2F4E0-GameScript
	dc.b	EventFlag_AncientWordRevealed, EventFlag_AncientWordRevealed
	dc.b	"The ancient word of"
	dc.b	$F8
	dc.b	"power is the word \INei.\I"
	dc.b	$EC
	dc.b	"We now give the Grantz"
	dc.b	$EC
	dc.b	"technique to Mieu."
	dc.b	$FC

	align 2

loc_2F4E0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Go now and fulfill your"
	dc.b	$F8
	dc.b	"destiny!"
	dc.b	$FC
; -------------------------------------------------
	even

loc_2F506:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You pull Orakio's Sword"
	dc.b	$F8
	dc.b	"from its stone sheath."
	dc.b	$EC
	dc.b	"Engraved on the floor is"
	dc.b	$EC
	dc.b	"\II hold Dark Force.\I"
	dc.b	$FC

	even

loc_2F568:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \IAt last I am"
	dc.b	$F8
	dc.b	"free of my vile bonds!"
	dc.b	$EC
	dc.b	"Tremble, fools, for I"
	dc.b	$EC
	dc.b	"roam the worlds again!"
	dc.b	$EC
	dc.b	"Other matters await me,"
	dc.b	$EC
	dc.b	"but we will meet again!\I"
	dc.b	$EC
	dc.b	"You have learned Megido,"
	dc.b	$EC
	dc.b	"destruction incarnate!"
	dc.b	$FC

	even

loc_2F62A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"SIREN \II fought Laya"
	dc.b	$F8
	dc.b	"many long centuries ago."
	dc.b	$EC
	dc.b	"I nursed my hatred and"
	dc.b	$EC
	dc.b	"attacked Layan people."
	dc.b	$EC
	dc.b	"But on Sage Isle I found"
	dc.b	$EC
	dc.b	"that the Layans are not"
	dc.b	$EC
	dc.b	"our real enemies. I am"
	dc.b	$EC
	dc.b	"sorry for my mistake.\I"
	dc.b	$FC

	even

loc_2F6EA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Siren collapses."
	dc.b	$F8
	dc.b	$FC

	even

loc_2F700:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIUN \IWhere is Orakio?"
	dc.b	$F8
	dc.b	"It's been 1,000 years,"
	dc.b	$EC
	dc.b	"but I'd know his black"
	dc.b	$EC
	dc.b	"sword anywhere!\I"
	dc.b	$FC

	even

loc_2F75A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIUN \IThe black sword!"
	dc.b	$F8
	dc.b	"Orakio, you've returned!"
	dc.b	$EC
	dc.b	"I'm so glad to meet you"
	dc.b	$EC
	dc.b	"again before I....\I"
	dc.b	$EC
	dc.b	"Miun collapses."
	dc.b	$EC
	dc.b	$FC

	even

loc_2F7CC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RULAKIR \IMy heart went"
	dc.b	$F8
	dc.b	"black 1,000 years ago,"
	dc.b	$EC
	dc.b	"when my family died in"
	dc.b	$EC
	dc.b	"the Laya-Orakio war."
	dc.b	$EC
	dc.b	"Dark Force owns my soul"
	dc.b	$EC
	dc.b	"and he shall own yours!\I"
	dc.b	$FC

	align 2

loc_2F85C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"RULAKIR \IYou have freed"
	dc.b	$F8
	dc.b	"me; destroy Dark Force!"	; missing closing quotes
	dc.b	$EC
	dc.b	"Rulakir is dead; finally"
	dc.b	$EC
	dc.b	"he is at peace."
	dc.b	$FC

	align 2

	dc.w	0
	dc.b	$FF, $00
	dc.b	"Dark Force appears!"
	dc.b	$F8
	dc.b	$FC

	even

loc_2F8D4:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \II am Dark"
	dc.b	$F8
	dc.b	"Force, master of death!"
	dc.b	$FC

	even

loc_2F906:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Your sorrow, anger, and"
	dc.b	$F8
	dc.b	"pain are my strength!"
	dc.b	$FC

	even

loc_2F938:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Observe my might and"
	dc.b	$F8
	dc.b	"despair of life, fools!"
	dc.b	$FC

	align 2

loc_2F96A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I will greatly enjoy"
	dc.b	$F8
	dc.b	"your painful deaths!\I"
	dc.b	$FC

	align 2

loc_2F99A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \II regret"
	dc.b	$F8
	dc.b	"smashing only one moon."
	dc.b	$EC
	dc.b	"Never fear, I'll return"
	dc.b	$EC
	dc.b	"again in 1,000 years;"
	dc.b	$EC
	dc.b	"you'll be dead, but I'll"
	dc.b	$EC
	dc.b	"visit your descendants!"
	dc.b	$EC
	dc.b	"It'll be a merry reunion"
	dc.b	$EC
	dc.b	"all around, I promise!\I"
	dc.b	$EC
	dc.b	"Dark Force disappears!"
	dc.b	$EC
	dc.b	$FC

	even

loc_2FA74:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \II wanted you"
	dc.b	$F8
	dc.b	"to burn in the sun-fire."
	dc.b	$EC
	dc.b	"It was not to be this"
	dc.b	$EC
	dc.b	"time, but I'm patient."
	dc.b	$EC
	dc.b	"I'll be back in 1,000"
	dc.b	$EC
	dc.b	"years to try again!\I"
	dc.b	$EC
	dc.b	"Dark Force disappears!"
	dc.b	$EC
	dc.b	$FC

	even

loc_2FB1A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \II almost got"
	dc.b	$F8
	dc.b	"you into the black hole."
	dc.b	$EC
	dc.b	"Oh well, I'll do it next"
	dc.b	$EC
	dc.b	"time--in 1,000 years!\I"
	dc.b	$EC
	dc.b	"Dark Force disappears!"
	dc.b	$EC
	dc.b	$FC

	even

loc_2FB98:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"DARK FORCE \IWasn't that"
	dc.b	$F8
	dc.b	"ship explosion a blast?"
	dc.b	$EC
	dc.b	"I destroyed one of the"
	dc.b	$EC
	dc.b	"two remaining ships left"
	dc.b	$EC
	dc.b	"out of the original 400;"
	dc.b	$EC
	dc.b	"you're the last one now!"
	dc.b	$EC
	dc.b	"I'll finish your ship"
	dc.b	$EC
	dc.b	"off 1,000 years hence.\I"
	dc.b	$EC
	dc.b	"Dark Force disappears!"
	dc.b	$EC
	dc.b	$FC

	even

loc_2FC74:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KARA \IFather's too weak"
	dc.b	$F8
	dc.b	"to fight. I must do it!"
	dc.b	$EC
	dc.b	"Father, please lend me"
	dc.b	$EC
	dc.b	"your Lune Slicer!\I"
	dc.b	$EC
	dc.b	"Kara joins your party"
	dc.b	$EC
	dc.b	$FC

	even

loc_2FCEA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Fifteen peaceful years"
	dc.b	$F8
	dc.b	"passed in Landen...."
	dc.b	$FC

	even

loc_2FD1A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"An earthquake shook the"
	dc.b	$F8
	dc.b	"entire kingdom!"
	dc.b	$FC

	even

loc_2FD46:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"NIAL \IAdan, find out"
	dc.b	$F8
	dc.b	"what caused that tremor!"
	dc.b	$EC
	dc.b	"Be sure to take Mieu and"
	dc.b	$EC
	dc.b	"Wren along with you.\I"
	dc.b	$FC

	even

loc_2FDA8:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"GWYN \IAdan, you must"
	dc.b	$F8
	dc.b	"take me with you!\I"
	dc.b	$EC
	dc.b	"Gwyn joins your party."
	dc.b	$EC
	dc.b	$FC

	even

loc_2FDEC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KARA \IFather wants me"
	dc.b	$F8
	dc.b	"to accompany your party."
	dc.b	$EC
	dc.b	"It is my duty to find"
	dc.b	$EC
	dc.b	"out what happened.\I"
	dc.b	$EC
	dc.b	"Kara joins your party."
	dc.b	$EC
	dc.b	$FC

	align 2

loc_2FE62:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"That blast knocked our"
	dc.b	$F8
	dc.b	"spaceship out of orbit!"
	dc.b	$EC
	dc.b	"I sure hope nothing bad"
	dc.b	$EC
	dc.b	"comes of this."
	dc.b	$FC

	even

loc_2FEBC:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Legends tell of wise"
	dc.b	$F8
	dc.b	"people in a sky-city"
	dc.b	$EC
	dc.b	"that floats over a dome-"
	dc.b	$EC
	dc.b	"world of ice and snow."
	dc.b	$EC
	dc.b	"Our dungeon has a device"
	dc.b	$EC
	dc.b	"that allows Wren to fly!"
	dc.b	$FC

	even

loc_2FF4C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Laya has gone back to"
	dc.b	$F8
	dc.b	"sleep in her palace."
	dc.b	$EC
	dc.b	"Perhaps she would join"
	dc.b	$EC
	dc.b	"you, if you asked her."
	dc.b	$FC

	even

loc_2FFAA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Who knows what the"
	dc.b	$F8
	dc.b	"spaceships fought about?"
	dc.b	$FC

	even

loc_2FFDA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I saw a spaceship that"
	dc.b	$F8
	dc.b	"looks exactly like ours!"
	dc.b	$EC
	dc.b	"Both spaceships beamed"
	dc.b	$EC
	dc.b	"lasers at each other and"
	dc.b	$EC
	dc.b	"the strange spaceship"
	dc.b	$EC
	dc.b	"exploded into fragments!"
	dc.b	$EC
	dc.b	"The earthquake happened"
	dc.b	$EC
	dc.b	"when our ship was hit"
	dc.b	$EC
	dc.b	"and was knocked off its"
	dc.b	$EC
	dc.b	"set course."
	dc.b	$FC

	even

loc_300C0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Perhaps the wise folk of"
	dc.b	$F8
	dc.b	"Skyhaven, on Frigidia,"
	dc.b	$EC
	dc.b	"know why the spaceships"
	dc.b	$EC
	dc.b	"attacked one another."
	dc.b	$EC
	dc.b	"Aero parts for Wren can"
	dc.b	$EC
	dc.b	"be found in our dungeon."
	dc.b	$FC

	even

loc_30154:
	dc.w	0
	dc.b	$FF, $00
	dc.w	character
	dc.b	" \IThis city is too"
	dc.b	$F8
	dc.b	"evil to leave standing!\I"
	dc.b	$EC
	dc.w	character
	dc.b	"'s anger triggered"
	dc.b	$EC
	dc.b	"the Megido technique."
	dc.b	$FC

	even

loc_301B2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"WREN \IMegido is tearing"
	dc.b	$F8
	dc.b	"the whole city apart!\I"
	dc.b	$EC
	dc.b	"MIEU \IHurry, we've got"
	dc.b	$EC
	dc.b	"to get out of here!\I"
	dc.b	$EC
	dc.b	"WREN \IThere's no time,"
	dc.b	$EC
	dc.b	"we'll never make it!\I"
	dc.b	$FC

	even

loc_3023E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Mieu used the Grantz"
	dc.b	$F8
	dc.b	"technique automatically."
	dc.b	$EC
	dc.b	"The entire party was"
	dc.b	$EC
	dc.b	"instantly teleported to"
	dc.b	$EC
	dc.b	"a place of safety far"
	dc.b	$EC
	dc.b	"from the falling city."
	dc.b	$FC

	even

loc_302CA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The evil city seemed to"
	dc.b	$F8
	dc.b	"scream a hideous cry as"
	dc.b	$EC
	dc.b	"it fell from the sky and"
	dc.b	$EC
	dc.b	"sank deep into the lake."
	dc.b	$FC

	even

loc_30330:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"You used your escapipe!"
	dc.b	$F8
	dc.b	"Normally a smart move,"
	dc.b	$EC
	dc.b	"but now I'm afraid the"
	dc.b	$EC
	dc.b	"game can't be continued."
	dc.b	$EC
	dc.b	"Please press the Reset"
	dc.b	$EC
	dc.b	"Button and try again."
	dc.b	$FC

	even

GameScript2:

loc_303C0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \ILook! A spaceship"
	dc.b	$F8
	dc.b	"that's just like ours!"
	dc.b	$EC
	dc.b	"It must be the other"
	dc.b	$EC
	dc.b	"surviving spaceship.\I"
	dc.b	$EC
	dc.b	"WREN \IThat spaceship is"
	dc.b	$EC
	dc.b	"sending us a message.\I"
	dc.b	$FC

	align 2

loc_3044E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \ILook at the sky--"
	dc.b	$F8
	dc.b	"the sun is enormous!"
	dc.b	$EC
	dc.b	"We're going to burn up"
	dc.b	$EC
	dc.b	"if we get much closer."
	dc.b	$EC
	dc.b	"The pilots had better"
	dc.b	$EC
	dc.b	"hurry up and move us!\I"
	dc.b	$FC

	even

loc_304DA:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KARA \IThose pilots cut"
	dc.b	$F8
	dc.b	"it pretty close!\I"
	dc.b	$EC
	dc.b	"WREN \IThey're sending us"
	dc.b	$EC
	dc.b	"a message!\I"
	dc.b	$FC

	even

loc_3052C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \ILook, the black"
	dc.b	$F8
	dc.b	"hole is getting smaller!"
	dc.b	$EC
	dc.b	"We're moving away from"
	dc.b	$EC
	dc.b	"it now!\I"
	dc.b	$EC
	dc.b	"KARA \IThe people of"
	dc.b	$EC
	dc.b	"Aerone moved us away!\I"
	dc.b	$EC
	dc.b	"WREN \IThere's a message"
	dc.b	$EC
	dc.b	"coming in.\I"
	dc.b	$FC

	even

loc_305CE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"MIEU \ILook! We're going"
	dc.b	$F8
	dc.b	"into a black hole!\I"
	dc.b	$FC

	even

loc_305FE:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"KARA \IWe were knocked"
	dc.b	$F8
	dc.b	"out by that collision.\I"
	dc.b	$EC
	dc.b	"WREN \IThe stars aren't"
	dc.b	$EC
	dc.b	"in the right places."
	dc.b	$EC
	dc.b	"We were transported"
	dc.b	$EC
	dc.b	"across space and time"
	dc.b	$EC
	dc.b	"when we went through the"
	dc.b	$EC
	dc.b	"black hole's surface.\I"
	dc.b	$EC
	dc.b	"MIEU \IWe're getting a"
	dc.b	$EC
	dc.b	"message from a planet"
	dc.b	$EC
	dc.b	"that orbits the star"
	dc.b	$EC
	dc.b	"ahead of us....\I"
	dc.b	$FC

	even

loc_30708:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren transforms into an"
	dc.b	$F8
	dc.b	"aquaskimmer."
	dc.b	$FC

	align 2

loc_30732:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren transforms into a"
	dc.b	$F8
	dc.b	"submersible."
	dc.b	$FC

	even

loc_3075A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren transforms into an"
	dc.b	$F8
	dc.b	"aerojet."
	dc.b	$FC

	align 2

loc_30780:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Wren transforms back to"
	dc.b	$F8
	dc.b	"its original form."
	dc.b	$FC

	align 2

loc_307B0:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The party has been"
	dc.b	$F8
	dc.b	"destroyed."
	dc.b	$FC

	even

loc_307D2:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We are the keepers of"
	dc.b	$F8
	dc.b	"our people's history."
	dc.b	$EC
	dc.b	"For 1,000 years we have"
	dc.b	$EC
	dc.b	"kept the past alive."
	dc.b	$EC
	dc.b	"Listen well and you will"
	dc.b	$EC
	dc.b	"hear of our plight."
	dc.b	$FC

	even

loc_3085C:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"We're the descendants of"
	dc.b	$F8
	dc.b	"the people of Palm, a"
	dc.b	$EC
	dc.b	"planet that once circled"
	dc.b	$EC
	dc.b	"the distant star Algo."
	dc.b	$EC
	dc.b	"Palm was destroyed by an"
	dc.b	$EC
	dc.b	"evil being that haunts"
	dc.b	$EC
	dc.b	"us every 1,000 years,"
	dc.b	$EC
	dc.b	"bringing death and ruin."
	dc.b	$EC
	dc.b	"This evil incarnate is"
	dc.b	$EC
	dc.b	"known as Dark Force!"
	dc.b	$FC

	even

loc_3094A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"The people of Palm were"
	dc.b	$F8
	dc.b	"thinkers and creators."
	dc.b	$EC
	dc.b	"They knew of the plans"
	dc.b	$EC
	dc.b	"made by the evil being."
	dc.b	$EC
	dc.b	"When the vile Dark Force"
	dc.b	$EC
	dc.b	"stirred 1,000 years ago,"
	dc.b	$EC
	dc.b	"preparations were made"
	dc.b	$EC
	dc.b	"to escape from Palm."
	dc.b	$FC

	even

loc_30A0A:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our ancestors built a"
	dc.b	$F8
	dc.b	"fleet of 400 spaceships."
	dc.b	$FC

	even

loc_30A3E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"This armada escaped the"
	dc.b	$F8
	dc.b	"destruction of Palm and"
	dc.b	$EC
	dc.b	"set off into space to"
	dc.b	$EC
	dc.b	"find a new homeland."
	dc.b	$FC

	even

loc_30A9E:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"Our ancestors thought"
	dc.b	$F8
	dc.b	"they had at last escaped"
	dc.b	$EC
	dc.b	"from the clutches of the"
	dc.b	$EC
	dc.b	"undying master of evil."
	dc.b	$EC
	dc.b	"But Dark Force managed"
	dc.b	$EC
	dc.b	"to slip aboard a ship."
	dc.b	$EC
	dc.b	"It destroyed all but one"
	dc.b	$EC
	dc.b	"of our sister ships"
	dc.b	$EC
	dc.b	"before Orakio and Laya"
	dc.b	$EC
	dc.b	"trapped it on Alisa ", $BE, $BF, "."
	dc.b	$EC
	dc.b	"Now there are only two"
	dc.b	$EC
	dc.b	"ships left of our fleet:"
	dc.b	$EC
	dc.b	"our ship, the Alisa ", $BE, $BF, ","
	dc.b	$EC
	dc.b	"and the Neo Palm."
	dc.b	$FC

	even

loc_30BE6:
	dc.w	0
	dc.b	$FF, $00
	dc.b	"I thought I saw a flash"
	dc.b	$F8
	dc.b	"of light go past us!"
	dc.b	$EC
	dc.b	"Another one hit us! It's"
	dc.b	$EC
	dc.b	"causing explosions!"
	dc.b	$EC
	dc.b	"This satellite's going"
	dc.b	$EC
	dc.b	"to blow up--get out!"
	dc.b	$FC

	even

; =========================================
loc_30C70:
	dc.w	loc_30CD8-loc_30C70
loc_30C72:
	dc.w	loc_30CF0-loc_30C72
loc_30C74:
	dc.w	loc_30D08-loc_30C74
loc_30C76:
	dc.w	loc_30D20-loc_30C76
loc_30C78:
	dc.w	loc_30D3A-loc_30C78
loc_30C7A:
	dc.w	loc_30D50-loc_30C7A
loc_30C7C:
	dc.w	loc_30D68-loc_30C7C
loc_30C7E:
	dc.w	loc_30D82-loc_30C7E
loc_30C80:
	dc.w	loc_30D98-loc_30C80
loc_30C82:
	dc.w	loc_30DB2-loc_30C82
loc_30C84:
	dc.w	loc_30DC8-loc_30C84
loc_30C86:
	dc.w	loc_30DDE-loc_30C86
loc_30C88:
	dc.w	loc_30DF6-loc_30C88
loc_30C8A:
	dc.w	loc_30E0E-loc_30C8A

	dc.w	$FFFF
; =========================================

; =========================================
loc_30C8E:
	dc.w	loc_30E1E-loc_30C8E
loc_30C90:
	dc.w	loc_30E36-loc_30C90
loc_30C92:
	dc.w	loc_30E4C-loc_30C92
loc_30C94:
	dc.w	loc_30E66-loc_30C94
loc_30C96:
	dc.w	loc_30E7C-loc_30C96
loc_30C98:
	dc.w	loc_30E94-loc_30C98
loc_30C9A:
	dc.w	loc_30EAA-loc_30C9A
loc_30C9C:
	dc.w	loc_30EC2-loc_30C9C
loc_30C9E:
	dc.w	loc_30EDC-loc_30C9E
loc_30CA0:
	dc.w	loc_30EF6-loc_30CA0
loc_30CA2:
	dc.w	loc_30F0E-loc_30CA2
loc_30CA4:
	dc.w	loc_30F26-loc_30CA4
loc_30CA6:
	dc.w	loc_30F40-loc_30CA6
loc_30CA8:
	dc.w	loc_30F58-loc_30CA8

	dc.w	$FFFF
; =========================================

; =========================================
loc_30CAC:
	dc.w	loc_30F66-loc_30CAC
loc_30CAE:
	dc.w	loc_30F7E-loc_30CAE
loc_30CB0:
	dc.w	loc_30F94-loc_30CB0
loc_30CB2:
	dc.w	loc_30FAE-loc_30CB2
loc_30CB4:
	dc.w	loc_30FC4-loc_30CB4
loc_30CB6:
	dc.w	loc_30FDC-loc_30CB6
loc_30CB8:
	dc.w	loc_30FF2-loc_30CB8
loc_30CBA:
	dc.w	loc_3100A-loc_30CBA
loc_30CBC:
	dc.w	loc_31024-loc_30CBC
loc_30CBE:
	dc.w	loc_3103E-loc_30CBE
loc_30CC0:
	dc.w	loc_31056-loc_30CC0
loc_30CC2:
	dc.w	loc_3106E-loc_30CC2
loc_30CC4:
	dc.w	loc_31084-loc_30CC4
loc_30CC6:
	dc.w	loc_3109A-loc_30CC6

	dc.w	$FFFF
; =========================================

; =========================================
loc_30CCA:
	dc.w	loc_310B2-loc_30CCA
loc_30CCC:
	dc.w	loc_310CA-loc_30CCC
loc_30CCE:
	dc.w	loc_310E0-loc_30CCE
loc_30CD0:
	dc.w	loc_310F4-loc_30CD0
loc_30CD2:
	dc.w	loc_3110E-loc_30CD2
loc_30CD4:
	dc.w	loc_31128-loc_30CD4
    dc.w	$FFFF
; =========================================

loc_30CD8:
	dc.b	"Hello Alisa "
	dc.b	$BE, $BF
	dc.b	". This is"
	dc.b	$FC

	even

loc_30CF0:
	dc.b	"the spaceship Neo Palm."
	dc.b	$FC

	even

loc_30D08:
	dc.b	"That explosion earlier"
	dc.b	$FC

	align 2

loc_30D20:
	dc.b	"attracted our attention."
	dc.b	$FC

	even

loc_30D3A:
	dc.b	"We guessed that Dark"
	dc.b	$FC

	align 2

loc_30D50:
	dc.b	"Force had arisen again"
	dc.b	$FC

	even

loc_30D68:
	dc.b	"and we came over to lend"
	dc.b	$FC

	align 2

loc_30D82:
	dc.b	"any help you needed."
	dc.b	$FC

	even

loc_30D98:
	dc.b	"Since you're still here,"
	dc.b	$FC

	align 2

loc_30DB2:
	dc.b	"we assume you've won."
	dc.b	$FC

	even

loc_30DC8:
	dc.b	"In 1,000 years, Dark"
	dc.b	$FC

	align 2

loc_30DDE:
	dc.b	"Force will arise again."
	dc.b	$FC

	even

loc_30DF6:
	dc.b	"Let's get rid of it for"
	dc.b	$FC

	even

loc_30E0E:
	dc.b	"good next time!"
	dc.b	$FC

	even
; ---------------------------------------------------
loc_30E1E:
	dc.b	"Hello, this is Aerone."
	dc.b	$FC

	even

loc_30E36:
	dc.b	"Thanks for your help."
	dc.b	$FC

	even

loc_30E4C:
	dc.b	"We're once again back on"
	dc.b	$FC

	even

loc_30E66:
	dc.b	"our original course."
	dc.b	$FC

	even

loc_30E7C:
	dc.b	"Without you, Dark Force"
	dc.b	$FC

	even

loc_30E94:
	dc.b	"would have prevailed."
	dc.b	$FC

	even

loc_30EAA:
	dc.b	"We're going toward the"
	dc.b	$FC

	align 2

loc_30EC2:
	dc.b	"brightest star up ahead."
	dc.b	$FC

	even

loc_30EDC:
	dc.b	"We're heading for one of"
	dc.b	$FC

	even

loc_30EF6:
	dc.b	"its planets--the third"
	dc.b	$FC

	align 2

loc_30F0E:
	dc.b	"one out from the star."
	dc.b	$FC

	even

loc_30F26:
	dc.b	"It seems perfect for us."
	dc.b	$FC

	align 2

loc_30F40:
	dc.b	"At last, our journey is"
	dc.b	$FC

	even

loc_30F58:
	dc.b	"almost over!"
	dc.b	$FC

	even
; --------------------------------------------------------
loc_30F66:
	dc.b	"Hello, this is Aerone."
	dc.b	$FC

	align 2

loc_30F7E:
	dc.b	"Thanks for your help."
	dc.b	$FC

	even

loc_30F94:
	dc.b	"We're once again back on"
	dc.b	$FC

	align 2

loc_30FAE:
	dc.b	"our original course."
	dc.b	$FC

	align 2

loc_30FC4:
	dc.b	"Without you, Dark Force"
	dc.b	$FC

	even

loc_30FDC:
	dc.b	"would have prevailed."
	dc.b	$FC

	even

loc_30FF2:
	dc.b	"We're going toward the"
	dc.b	$FC

	align 2

loc_3100A:
	dc.b	"brightest star up ahead."
	dc.b	$FC

	even

loc_31024:
	dc.b	"We're heading for one of"
	dc.b	$FC

	even

loc_3103E:
	dc.b	"its planets--the third"
	dc.b	$FC

	align 2

loc_31056:
	dc.b	"one out from the star."
	dc.b	$FC

	even

loc_3106E:
	dc.b	"It is perfect for us."
	dc.b	$FC

	even

loc_31084:
	dc.b	"At last we're nearing"
	dc.b	$FC

	even

loc_3109A:
	dc.b	"the end of our journey!"
	dc.b	$FC

	even
; -----------------------------------------------------
loc_310B2:
	dc.b	"Greetings, alien craft!"
	dc.b	$FC

	even

loc_310CA:
	dc.b	"Identify yourselves."
	dc.b	$FC

	even

loc_310E0:
	dc.b	"This is the London"
	dc.b	$FC

	even

loc_310F4:
	dc.b	"Communications Center on"
	dc.b	$FC

	even

loc_3110E:
	dc.b	"Earth of the Sol system."
	dc.b	$FC

	align 2

loc_31128:
	dc.b	"Over and out."
	dc.b	$FC

	even
