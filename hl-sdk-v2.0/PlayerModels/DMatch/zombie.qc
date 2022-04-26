/*
==============================================================================

Zombie

==============================================================================
*/

$modelname valve/models/player/Zombie/zombie.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/zomdm
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/zomdm/ZOM_Template_Biped1"
studio "../dmatch/lowcount/zomdm/ZOM_Template_Biped1"
}

$include "valve/models/player/player_shared.qc"

