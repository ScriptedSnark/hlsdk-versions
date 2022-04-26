$modelname valve/models/v_gauss.mdl
$cd valve/models/v_gauss
$cdtexture valve/models/v_gauss/maps_8bit

$scale 1.0

$origin -3 0 64 5

// whole body
$body body "gauss_gun" 
$body body "gauss_hand" 

$attachment 0 "Gauss Master" 17 -1 0 X 1

$sequence idle "gauss_idle1(simple)" loop fps 15
$sequence idle2 "gauss_idle2(backandforth)" loop fps 15
$sequence fidget "gauss_fidget1(spin)" fps 30
$sequence spinup "gauss_spinup" loop fps 30
$sequence spin "gauss_spincycle" loop fps 30
$sequence fire "gauss_fire1(fast)" fps 30
$sequence fire2 "gauss_fire2(big)" fps 30
$sequence holster "gauss_holster" fps 45
$sequence draw "gauss_draw" fps 60