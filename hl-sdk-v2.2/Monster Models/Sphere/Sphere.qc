/*

Sphere.qc

*/

$modelname valve/models/Sphere.mdl
$cd valve/models/Sphere
$cdtexture valve/models/Sphere/maps_8bit
$scale 1.0

// whole body
$body studio "Sphere_Template_Biped1"

$sequence idle_off animation "Sphere_Deploy1" frames 0 0 fps 1 
$sequence fire "Sphere_shoot1" fps 33 loop
$sequence deploy "Sphere_Deploy1" fps 30
$sequence retire "Sphere_Deploy1" fps 30
