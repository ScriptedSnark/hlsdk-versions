$modelname valve/models/bigrat.mdl
$cd valve/models/bigrat
$cdtexture valve/models/bigrat/Maps_8bit
$scale 1.2

// whole body
$body studio "Rat_Template_Biped1"


$eyeposition 0 0 3
//$eyeposition 0 9 3


$sequence idle4 "Rat_Walk_Idle1(Perch)" loop fps 15 ACT_IDLE 4
$sequence idle5 "Rat_Walk_Idle2(sniff)" loop fps 15 ACT_IDLE 1
$sequence idle6 "Rat_Walk_Idle3(dig)" loop fps 15 ACT_IDLE 1
$sequence idle7 "Rat_idle4(subtle)" loop fps 15 ACT_IDLE 20
$sequence walk2 "Rat_Walk1" LX loop fps 15 ACT_WALK 1
//$sequence swim "Rat_swim1" loop fps 15
//$sequence nip "Rat_nip1" loop fps 15 ACT_MELEE_ATTACK1 1 { event 1 7 }
$sequence jump "Rat_jump1" loop fps 15 
//$sequence flinch1 "Rat_flinch2(hard)" loop fps 15 ACT_BIG_FLINCH 1
//$sequence flinch2 "Rat_flinch1(light)" loop fps 15 ACT_SMALL_FLINCH 1
$sequence eat "Rat_eat1" loop fps 15 ACT_EAT 1
$sequence die1 "Rat_die1(light)" loop fps 15 ACT_DIESIMPLE 1
//$sequence die2 "rat_die2(medium)" loop fps 15 ACT_DIESIMPLE 2
//$sequence die3 "rat_die3(violent)" loop fps 15 ACT_DIEVIOLENT 1
