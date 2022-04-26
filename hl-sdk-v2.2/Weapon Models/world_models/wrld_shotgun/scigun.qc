/*

prop shotgun for c3a2


*/

$scale 1

// shotgun.
$modelname valve/models/scigun.mdl
$cd valve/models/world_models/wrld_shotgun
$body studio scigun
$sequence idle scigun
$sequence onguard "../../cinematics/c3a2f/gunsci_gunidle" fps 12 loop scale 1.08
$sequence seeya "../../cinematics/c3a2f/gunsci_gun" fps 33 scale 1.08 {
	AX AY AZR
}