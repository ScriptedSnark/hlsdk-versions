/*
==============================================================================

shared file for the heavy weapons character

==============================================================================
*/

$eyeposition 0 0 70
//$eyeposition 0 4 70

$controller 0 "bip01 head" XR 0 360

$sequence idle "idle1" loop ACT_IDLE 1
$sequence idle "idle2" loop ACT_IDLE 1
$sequence creeping_walk "walk1" LX loop ACT_WALK 1
$sequence turn "180_L" ACT_TURN_LEFT 1
$sequence turn "180_R" ACT_TURN_RIGHT 1
$sequence attack "shoot1" loop { 
{ event 1 1 }
{ event 2 8 }
{ event 3 15 }
{ event 4 22 }
{ event 5 29 }
{ event 6 36 }
{ event 7 43 }
{ event 8 50 }
{ event 9 57 }
} ACT_RANGE_ATTACK1 1

$sequence small_pain "flinch_sm" X Y ACT_SMALL_FLINCH 1
$sequence small_pain "flinch_sm2" X Y ACT_SMALL_FLINCH 2
$sequence die_backwards "dieback" X Y 
$sequence die_crumple "diecrumple" X Y ACT_DIESIMPLE 1
$sequence die_violent "dieviolent" X Y 

$sequence heavy_ambush "..\cinematics\ambush\ambush_heavy" {
	origin -98 192 184
	scale 1.0
	AX AY AZR
	fps 20
}


