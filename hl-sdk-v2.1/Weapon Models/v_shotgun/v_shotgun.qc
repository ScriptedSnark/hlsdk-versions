/*
==============================================================================

shotgun viewmodel

==============================================================================
*/

$modelname valve/models/v_shotgun.mdl
$cd valve/models/v_shotgun
$cdtexture valve/models/v_shotgun/maps_8bit
$scale 1.0 

// whole body
$body studio "v_shotgun_reference"
$body studio "shell"

//$origin       SIDE-SIDE IN-OUT  UP-DOWN

$origin 2.152 -3 61.499 3

$attachment 0 "Bip01 R Hand" 30 1 6 X 1

$sequence sm_idle "small_idle" fps 9 loop
$sequence shoot "new_shoot" fps 20 { event 5001 0 "31" }
$sequence shoot_big "shoot_bigammo" fps 13 { event 5001 0 "41" }
$sequence reload "reload_short" fps 16
$sequence pump "pump_after_reload" fps 13
$sequence start_reload "start_reload" fps 12
$sequence draw "draw_weapon" fps 24
$sequence reholster "reholster" fps 30
$sequence idle4 "idle4" fps 9 loop
$sequence deepidle "deep_idle" fps 12 loop
