/*
==============================================================================

human grunt

==============================================================================
*/

$modelname valve/models/hgrunt.mdl
$cd valve/models/hgrunt
$cdtexture valve/models/hgrunt valve/models/world_models/wrld_shotgun
$externaltextures
$scale 1

$root "Bip01"

// whole body
$body body "gruntbody"

$bodygroup heads
{
studio "grunthead"
studio "commanderhead"
studio "shotgunhead"
studio "m203_head"
}

$bodygroup weapons 
{
studio "gunreference"
studio "gunreference(shotgun)"
blank
}

$texturegroup arms 
{
{ "newarm.bmp" "handback.bmp" "helmet.bmp" } 
{ "newarm(dark).bmp" "handback(dark).bmp" "helmet(dark).bmp" }
}

$include "valve/models/hgrunt/hgrunt_shared.qc"
