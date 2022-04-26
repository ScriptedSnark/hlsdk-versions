/*

w_squeak.qc 

world model squeak grenade

*/


// power suit.
$modelname valve/models/w_squeak.mdl
$cd valve/models/world_models/wrld_squeak
$cdtexture valve/models/v_squeak/maps_8bit
$externaltextures

$scale 1

// whole body
$body studio "WORLDSQUEAK_Template_Biped1" reverse

$sequence idle "WORLDSQUEAK_Idle1(Subtle)" fps 16 
$sequence fidget "WORLDSQUEAK_Fidget1(Agitate)" fps 16
$sequence jump "WORLDSQUEAK_Jump1" X Y fps 16
$sequence run "WORLDSQUEAK_Run1" LX loop fps 45