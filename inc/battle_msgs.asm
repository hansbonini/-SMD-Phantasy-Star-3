loc_3D90A:
	dc.b	"You've been ambushed!"
	dc.b	$FC

loc_3D920:
	dc.b	"You surprise the monster"
	dc.b	$FC

BattleRunAttemptMsg:
	dc.b	"You try to escape..."
	dc.b	$FC

loc_3D94E:
	dc.b	"But you can't get away!"
	dc.b	$FC

loc_3D966:
	dc.s	character, " attacks!"
	dc.b	$FC

loc_3D972:
	dc.s	"Damage ", quantity
	dc.b	$FC

loc_3D97C:
	dc.s	character, "'s party won."
	dc.b	$F8
	dc.s	"Earned ", quantity, " XP"
	dc.b	$F8
	dc.s	"and ", money_qty, " meseta."
	dc.b	$FC

loc_3D9A8:
	dc.s	character, " won."
	dc.b	$F8
	dc.s	"Earned ", quantity, " XP"
	dc.b	$F8
	dc.s	"and ", money_qty, " meseta."
	dc.b	$FC

loc_3D9CC:
	dc.s	character, " gained a level!"
	dc.b	$FC

loc_3D9DF:
	dc.s	character, " has no weapon!"
	dc.b	$FC

loc_3D9F1:
	dc.s	character, " defended ", name, "."
	dc.b	$FC

loc_3DA01:
	dc.s	character, "'s defense increasd."
	dc.b	$FC

loc_3DA18:
	dc.s	character, " has no techniques."
	dc.b	$FC

loc_3DA2E:
	dc.b	"Not enough Tech Pts."
	dc.b	$FC

loc_3DA43:
	dc.b	"You can't use that."
	dc.b	$FC

loc_3DA57:
	dc.s	character, " used ", name, "."
	dc.b	$FC

loc_3DA63:
	dc.s	"Effectiveness is ", quantity, "."
	dc.b	$FC

loc_3DA78:
	dc.s	character, " can no longer fight"
	dc.b	$FC

loc_3DA8F:
	dc.b	"You have been defeated."
	dc.b	$FC

loc_3DAA7:
	dc.s	character, " has been poisoned."
	dc.b	$FC

loc_3DABD:
	dc.b	"Succeeded!"
	dc.b	$FC

loc_3DAC8:
	dc.b	"Failed!"
	dc.b	$FC
