/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player/gina/Gina.mdl
$cd valve/models/player
$cdtexture valve/models/dmatch/lowcount/gina
$cliptotextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "../dmatch/lowcount/gina/DM_Gina_Head1"
studio "../dmatch/highcount/gina/Gina_Hi-ResDM1"
}

$include "valve/models/player/player_shared.qc"

