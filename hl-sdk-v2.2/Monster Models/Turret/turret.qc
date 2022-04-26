/*

turret.qc

*/

$modelname valve/models/turret.mdl
$cd valve/models/turret
$cdtexture valve/models/turret/maps_8bit
$externaltextures
$scale 1.5

// whole body
$body studio "turret_template1"

$controller 0 "dummy02" YR 0 360
$controller 1 "dummy05" ZR -90 15

$attachment 0 "dummy05" -46 4.5 0 X -1
$attachment 1 "dummy07" 0 8.5 0 Y 1

$hbox 10 "Trim01" -35.10 -30.40 -2.18  35.10 30.40 2.18
$hbox 10 "Top_Lid01" -30.57 -26.47 0  30.57 26.47 15.51
$hbox 1 "Pivot01" -20.57 -30.22 -15.96  20.80 17.55 9.89
//hbox 1 "Siren01" -2.89 -3.15 -3.59  2.89 3.15 3.59
$hbox 1 "Gun_Body01" -8.09 -14.83 -6.58  8.09 14.83 6.58
$hbox 1 "Barrels01" -6.13 -13.80 -5.56  6.13 13.80 5.29
$hbox 1 "Brace02" -9.09 -25.68 0.00  8.87 0.00 41.01

$sequence idle_off animation "turret_deploy1" frames 0 0 fps 1 
$sequence fire "turret_shoot1" fps 150 loop {
{ event 5001 0 "51" } { event 5001 10 "51" } { event 5001 20 "51" } 
// { event 5001 5 "1" } { event 5001 15 "1" } { event 5001 25 "1" }
}
$sequence spin "turret_spin_idle1" fps 33 loop
$sequence deploy "turret_deploy1" fps 30
$sequence retire "turret_deploy1" fps 10
$sequence die "turret_die1" fps 30
