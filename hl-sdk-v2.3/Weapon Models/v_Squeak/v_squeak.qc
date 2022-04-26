

$modelname valve/models/v_squeak.mdl
$cd valve/models/v_squeak
$cdtexture valve/models/v_squeak/maps_8bit

$scale 1.0

$origin 0 0 64

// whole body
$body body "SQUEAK_Template_Biped(Hand)1"
$body body "SQUEAK_Template_Biped(Weapon)1" reverse

$sequence idle1 "SQUEAK_Idle1(Subtle)" loop fps 16
$sequence fidgetfit "SQUEAK_Fidget1(Fit)" fps 16
$sequence fidgetnip "SQUEAK_Fidget1(nip)" fps 16
$sequence down "SQUEAK_Down1" fps 16
$sequence up "SQUEAK_Up1" fps 30
$sequence throw "SQUEAK_Throw1" fps 24 frame 30 43
