/*
==============================================================================

Hologram

==============================================================================
*/

$modelname valve/models/holo.mdl
$cd valve/models/player
$cdtexture valve/models/player/maps_8bit

$scale 1.0
$origin 0 0 36

// whole body
$body studio "hologram"

$controller mouth "bone02" ZR 0 16


//training room animations

$sequence walk "..\cinematics\troom\hologram_walk" lx loop fps 26 ACT_walk 1
$sequence longjump "..\cinematics\troom\holo_longjump" fps 30
$sequence troom_talkidle "..\cinematics\troom\talk" loop fps 14 ACT_IDLE 1
$sequence troom_quadjump "..\cinematics\troom\quad_jump" {
	scale 1.0
	AX AY AZR
	fps 42
	{ event 1001 1 }
}
$sequence troom_intro "..\cinematics\troom\intro" fps 20 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holointro.wav" }
}
$sequence quadtalk "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn2.wav" }
}
$sequence troom_talkidle "..\cinematics\troom\talk" loop fps 14 ACT_IDLE 1
$sequence cjump_hole "..\cinematics\troom\cjump_hole" fps 18 {
	scale 1.0
	AX AY AZR
	{ event 1001 1 }
}
$sequence scharge "..\cinematics\troom\scharge_talk" fps 14 scale 1.0 {
	AX AY AZR
	{ event 1008 1 "*holo/holostn1.wav" }
}
$sequence crouch_hole "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn3.wav" }
}
$sequence jump_module "..\cinematics\troom\scharge_talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn4.wav" }
}
$sequence longjumptalk "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn5.wav" }
}
$sequence healthkit "..\cinematics\troom\scharge_talk" fps 14 scale 1.0 {
	AX AY AZR
	{ event 1008 1 "*holo/holostn6.wav" }
}
$sequence completed "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn7.wav" }
}
$sequence target "..\cinematics\troom\point_left(target)" fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn16.wav" }
}
$sequence kickup "..\cinematics\troom\go_for_air" fps 24 AX AY AZR
$sequence treadwater "..\cinematics\troom\holo_treadwater" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn14.wav" }
}
$sequence dive "..\cinematics\troom\dive_water" fps 30 AX AY AZR
$sequence divetalk "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn13.wav" }
}
$sequence aqua_exit "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn15.wav" }
}
$sequence divetalk "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn13.wav" }
}
$sequence train "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn12.wav" }
}
$sequence crate "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn10.wav" }
}
$sequence pull_box "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn10a.wav" }
}
$sequence crate_exit "..\cinematics\troom\talk" loop fps 14 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn11.wav" }
}
$sequence bust_wall "..\cinematics\troom\bust_wall_talk" loop fps 16 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn9.wav" }
}
$sequence ladder "..\cinematics\troom\point_up(ladder)" loop fps 16 {
	scale 1.0
	AX AY AZR
	{ event 1008 1 "*holo/holostn8.wav" }
}