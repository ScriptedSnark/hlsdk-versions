/*
----------------------------

barney.qc

----------------------------
*/

$modelname valve/models/barney.mdl
$cd valve/models/barney
$cdtexture valve/models/barney/maps_8bit
$externaltextures


$controller 0 "Bip01 Head" XR -60 60
$controller mouth "Bone05" ZR 0 45


// whole body
$body studio "BARNEY-X_Template_Biped1" reverse

$bodygroup gun
{
studio "BARNEY-X_Template_Biped(Gun-Hlstr)1"
studio "BARNEY-X_Template_Biped(Gun)1" reverse
blank
}

$eyeposition 0 0 63
//$eyeposition 0 6 63

$include "valve/models/barney/barney_shared.qc"
