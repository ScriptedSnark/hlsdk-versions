$modelname valve/models/v_satchel.mdl
$cd valve/models/v_satchel
$cdtexture valve/models/v_satchel/maps_8bit

$scale 1.0

$origin -1 1.25 63 3

// whole body
$body body "satchel_hand_fix" reverse
$body body "satchel_charge"

$sequence idle1 "satchel_idle1(simple)" loop fps 20
$sequence fidget1 "satchel_fidget1(gripshift)" fps 30
$sequence draw "satchel_draw" fps 30
$sequence drop "satchel_drop" fps 30
