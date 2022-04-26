/*
==============================================================================

player

==============================================================================
*/

$modelname valve/models/player.mdl
$cd valve/models/player
$cdtexture valve/models/player/maps_8bit
$externaltextures

$scale 1.0
$origin 0 0 36

// whole body
$bodygroup body
{
studio "player_template_biped(No_Head)1"
}

$bodygroup head
{
studio "player_template_biped(Gordon_Head)1"
studio "player_template_biped(Helmet)1"
}

$controller mouth "bone02" ZR 0 30

$include "valve/models/player/player_shared.qc"

