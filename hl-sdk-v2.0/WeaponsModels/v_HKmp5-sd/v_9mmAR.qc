/*
==============================================================================

mp5 machine gun viewmodel

==============================================================================
*/

$modelname valve/models/v_9mmAR.mdl
$cd valve/models/v_hkmp5-sd
$scale 1 

// whole body
$body studio "mp5sd"


//$origin	SIDE-SIDE IN-OUT  UP-DOWN
$origin 2 10 8

$attachment 0 "Bone09" -14 1 -0.5 X -1

$sequence longidle "long_idle" fps 8
$sequence idle1 "idle1" fps 35 
$sequence grenade "grenadeshoot" fps 30 

$sequence reload "reload" fps 30 {
{ event 5004 5 "items/cliprelease1.wav" } 
{ event 5004 24 "items/clipinsert1.wav" }
}

$sequence deploy "deploy" frame 4 15 fps 12
$sequence shoot "shoot1" fps 10 { event 5001 0 "20" }
$sequence shoot "shoot2" fps 10 { event 5001 0 "20" }
$sequence shoot "shoot3" fps 10 { event 5001 0 "20" }



