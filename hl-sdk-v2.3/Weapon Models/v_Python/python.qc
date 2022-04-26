$modelname valve/models/v_357.mdl
$cd valve/models/v_python
$cdtexture valve/models/v_python/maps_8bit

$scale 1

// whole body

$body gun "python_gun"
$body bullets "python_bullets"
$body speedload "python_speedload"
$body hands "python_hands"

$bodygroup scope
{
blank
studio "python_lasersight"
}

$origin 0 -8 65

$attachment 0 "python_master" 0 -14 6 Y -1

$sequence idle1 "python_idle1(rangechange)" loop fps 30
$sequence fidget1 "python_fidget1(hammer)" fps 30
$sequence fire1 "python_fire" fps 30 { event 5001 0 "31" }
$sequence reload "python_reload" fps 36
$sequence holster "python_holster" fps 30
$sequence draw "python_draw" fps 30
$sequence idle2 "python_idle2(shimmy)" loop fps 30
$sequence idle3 "python_idle3(ontarget)" loop fps 30
