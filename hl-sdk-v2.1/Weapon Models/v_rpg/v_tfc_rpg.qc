$modelname tf1/models/v_tfc_rpg.mdl
$cd valve/models/v_rpg
$cdtexture valve/models/v_rpg/maps_8bit

$scale 1.0

$origin 2 0 62.5 -3

// whole body


$body body "rpg_rocket" 
$body body "blowpipe"
$body body "rpg_hand_TFC" reverse

$renamebone "Bip01 L Thigh" "Bip01 L Leg"
$renamebone "Bip01 L Calf" "Bip01 L Leg1"
$renamebone "Bip01 R Thigh" "Bip01 R Leg"
$renamebone "Bip01 R Calf" "Bip01 R Leg1"
$renamebone "Bip01 L Clavicle" "Bip01 L Arm"
$renamebone "Bip01 L UpperArm" "Bip01 L Arm1"
$renamebone "Bip01 L Forearm" "Bip01 L Arm2"
$renamebone "Bip01 R Clavicle" "Bip01 R Arm"
$renamebone "Bip01 R UpperArm" "Bip01 R Arm1"
$renamebone "Bip01 R Forearm" "Bip01 R Arm2"

$sequence idle "rpg_idle1(loaded)" loop fps 15				
$sequence fidget "rpg_fidget1(loaded_screen)" loop fps 15
$sequence fire "rpg_fire" fps 30
$sequence holster1 "rpg_holster1(loaded)" fps 30
$sequence draw1 "rpg_draw1(loaded)" fps 30
$sequence holster2 "rpg_holster2(unloaded)" fps 30
$sequence draw2 "rpg_draw2(unloaded)" fps 30
// TfC specific
$sequence rel_start "rpg_reload_start" fps 30
$sequence rel_cycle "rpg_reload_single" fps 30 loop
$sequence rel_end "rpg_reload_end" fps 30
//
$sequence idle2 "rpg_idle2(empty)" loop fps 15
$sequence fidget2 "rpg_fidget2(unloaded_screen)" loop fps 15
