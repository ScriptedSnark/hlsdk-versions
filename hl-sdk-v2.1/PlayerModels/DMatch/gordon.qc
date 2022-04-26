/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player/Gordon/Gordon.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/gordon
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/gordon/DM_Gordon_Head1"
studio "../dmatch/highcount/gordon/Gordon_Hi-ResDM1"
}

$include "valve/models/player/player_shared.qc"

