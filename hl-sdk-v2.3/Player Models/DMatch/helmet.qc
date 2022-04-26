/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player/Helmet/Helmet.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/helmet
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/helmet/DM_HELMET_Biped1"
studio "../dmatch/highcount/helmet/Helmet_Hi-ResDM1"
}

$include "valve/models/player/player_shared.qc"

