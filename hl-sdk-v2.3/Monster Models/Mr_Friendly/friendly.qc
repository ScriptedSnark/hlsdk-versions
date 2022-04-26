/*

mr friendly.qc 


*/

$scale 1.7

// mr friendly.smd
$modelname valve/models/friendly.mdl
$cd valve/models/mr_friendly

$body studio "reference"

$eyeposition 0 0 17
//$eyeposition 0 20 17


$sequence idle1 "idle1" LOOP fps 30 ACT_IDLE 1

$sequence walk "walk" LX LOOP fps 35 ACT_WALK 1

$sequence smallflinch "flinchsm1" fps 30 ACT_SMALL_FLINCH 1
$sequence smallflinch2 "flinch_new" fps 30 ACT_SMALL_FLINCH 1

$sequence attack "attack1" fps 30 ACT_MELEE_ATTACK1 1
$sequence doublewhip "sr_attack" fps 30 ACT_MELEE_ATTACK1 1

$sequence diesimple "diesimple" ACT_DIESIMPLE 1
$sequence vomit "vomit" fps 30 ACT_RANGE_ATTACK1 1
