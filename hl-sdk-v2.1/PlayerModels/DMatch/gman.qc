/*
==============================================================================

player (gman varient)

==============================================================================
*/

$modelname valve/models/player/gman/Gman.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/highcount/gman
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/highcount/gman/gman_reference"
}

$include "valve/models/player/player_shared.qc"

