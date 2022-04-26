$modelname valve/models/v_grenade.mdl
$cd valve/models/v_grenade
$cdtexture valve/models/v_grenade/maps_8bit

$scale 1.0

$origin 0 0 64

// whole body
$body body "grenade"
$body body "grenade_hand"

$sequence idle "grenade_idle1(sway)" loop fps 30
$sequence fidget "grenade_fidget1(thumb)" loop fps 30
$sequence pinpull "grenade_pinpull" fps 45
// I substituted an overhand throw in case the code is not updated
// to have the "toss" appear from the bottom of the screen
// if the toss is re-instated use this QC line instead of the "throw1":
// $sequence throw1 "grenade_throw1(toss)" fps 18
$sequence throw1 "grenade_throw3(hard)" fps 13 {
origin -2 -4 65
}
$sequence throw2 "grenade_throw3(hard)" fps 20 {
origin 1 -1 63
}
$sequence throw3 "grenade_throw3(hard)" fps 30 {
origin -1 1 60
}
$sequence holster "grenade_holster" fps 30
$sequence draw "grenade_draw" fps 30

