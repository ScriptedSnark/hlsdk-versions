/*
==============================================================================

crowbar

==============================================================================
*/

$modelname valve/models/v_crowbar.mdl
$cd valve/models/v_crowbar

// whole body
$body studio "crowbar_reference"

$origin 0 0 64

$sequence idle1 "CROWBAR_idle1" fps  13
$sequence draw "CROWBAR_draw" fps  24
$sequence holster "CROWBAR_holster" fps  24
$sequence attack1 "CROWBAR_strike1" fps 22
$sequence attack1miss "CROWBAR_strike1(miss)" fps 22
$sequence attack2 "CROWBAR_Strike2" fps 22
$sequence attack2hit "CROWBAR_Strike2(hit)" fps 22
$sequence attack3 "CROWBAR_Strike3" fps 24
$sequence attack3hit "CROWBAR_Strike3(hit)" fps 24
$sequence idle2 "crowbar_idle2" fps 15 loop
$sequence idle3 "crowbar_idle3" fps 15 loop




