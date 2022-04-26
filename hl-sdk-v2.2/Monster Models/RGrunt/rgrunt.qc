/*
==============================================================================

robot grunt

==============================================================================
*/

$modelname valve/models/hgrunt.mdl
$cd valve/models/hgrunt
$cdtexture valve/models/rgrunt/maps8bit valve/models/hgrunt valve/models/world_models/wrld_shotgun
$externaltextures
$scale 1

$root "Bip01"

// whole body
$body body "../rgrunt/rgrunt_Template_Biped1"

$bodygroup heads
{
blank
}

$bodygroup weapons 
{
studio "gunreference"
studio "gunreference(shotgun)"
blank
}

$include "valve/models/hgrunt/hgrunt_shared.qc"
