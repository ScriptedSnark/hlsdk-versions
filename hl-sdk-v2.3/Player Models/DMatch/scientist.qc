/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player/Scientist/Scientist.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/scientist
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/scientist/DM_Scientist_Biped1"
studio "../dmatch/highcount/scientist/DM_ScienceBiped1"
}

$include "valve/models/player/player_shared.qc"

