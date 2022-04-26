/*
==============================================================================

remapped pistol viewmodel

==============================================================================
*/

$modelname tfc/models/v_tfc_pistol.mdl
$cd valve/models/v_glock
$cdtexture valve/models/v_glock/maps_8bit
$scale 1.0 
$gamma 1.2

// whole body

$body studio "glock_reference_remap"
$body studio "clip_reference"


$bodygroup silencer
{
blank
studio "glock_reference(silencer)"
}

$attachment 0 "Bip01 R Hand" 10 2.25 4.25 X 1

//$origin       SIDE-SIDE IN-OUT  UP-DOWN

$origin 1.75 -4 62 1
$sequence idle1 "glock_idle1" fps 16 loop
$sequence idle2 "glock_idle2" fps 16 loop
$sequence idle3 "glock_idle3" fps 14 loop
$sequence shoot "glock_shoot" fps 25 
$sequence shoot_empty "glock_shoot_slideback" fps 25 }
$sequence reload "glock_shoot_reload" fps 18 {
{ event 5004 4 "items/9mmclip2.wav" }
{ event 5004 23 "items/9mmclip1.wav" }
}

$sequence reload_noshot "glock_reload_from_idle" fps 18 {
{ event 5004 4 "items/9mmclip2.wav" }
{ event 5004 23 "items/9mmclip1.wav" }
}
$sequence draw "glock_draw" fps 16
$sequence holster "glock_holster" fps 16
$sequence add_silencer "glock_add_silencer" fps 18