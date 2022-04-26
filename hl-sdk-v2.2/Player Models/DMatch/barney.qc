/*
==============================================================================

Barney

==============================================================================
*/

$modelname valve/models/player/barney/barney.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/highcount/barney
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/barney/lbarney_reference"
studio "../dmatch/highcount/barney/barney_reference" reverse
}

$include "valve/models/player/player_shared.qc"

