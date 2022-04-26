$modelname valve/models/v_rpg.mdl
$cd valve/models/v_rpg
$cdtexture valve/models/v_rpg/maps_8bit

$scale 1.0

$origin 2 0 61.5 -3

// whole body


$body body "rpg_rocket" 
$body body "blowpipe"
$body body "rpg_hand" reverse


$sequence idle "rpg_idle1(loaded)" loop fps 15				
$sequence fidget "rpg_fidget1(loaded_screen)" loop fps 15
$sequence reload "rpg_reload" fps 30
$sequence fire "rpg_fire" fps 30
$sequence holster1 "rpg_holster1(loaded)" fps 30
$sequence draw1 "rpg_draw1(loaded)" fps 30
$sequence holster2 "rpg_holster2(unloaded)" fps 30
$sequence draw2 "rpg_draw2(unloaded)" fps 30



$sequence idle2 "rpg_idle2(empty)" loop fps 15
$sequence fidget2 "rpg_fidget2(unloaded_screen)" loop fps 15
