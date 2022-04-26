/*

w_grenade.qc 

*/

$scale 1.3

// grenade.
$modelname valve/models/w_grenade.mdl
$cd valve/models/world_models/wrld_grenade
$externaltextures
$body studio grenade

$sequence idle grenade

$origin 0 0 -2
$sequence roll1 "clean_roll" fps 15 loop
$sequence roll2 "noisy_roll" fps 15 loop
$sequence toss "slow_end_over_end" fps 10 loop
$sequence toss2 "football_pass" fps 10 loop
$sequence toss "lazy_rotate" fps 10 loop
$sequence toss "random_noise" fps 10 loop