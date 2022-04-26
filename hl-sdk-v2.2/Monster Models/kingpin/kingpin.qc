/*

kingpin.qc 

*/

$scale 1.5

// kingpin.smd
$modelname valve/models/kingpin.mdl
$cd valve/models/kingpin

$body studio "reference"

$eyeposition 0 0 55
//$eyeposition 0 14 55


$sequence idle1 "idle1" fps 22 LOOP ACT_IDLE 1
$sequence walk "walk2" LX fps 30 LOOP ACT_WALK 1
$sequence run "run" LX LOOP ACT_RUN 1