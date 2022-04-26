/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player/Hgrunt/Hgrunt.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/hgrunt
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/hgrunt/grunt(reference)"
}

$include "valve/models/player/player_shared.qc"

