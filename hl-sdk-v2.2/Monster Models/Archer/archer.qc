/*

archer.qc 

*/

$scale 1.0

// archer.smd
$modelname valve/models/archer.mdl
$cd valve/models/archer
$cdtexture valve/models/archer/maps_8bit

$body studio archer_template_biped1

$eyeposition 0 20 10

$sequence idle1 "archer_idle1" fps 10 LOOP ACT_IDLE 10
$sequence idle2 "archer_idle2" fps 13 ACT_IDLE 1
$sequence idle3 "archer_idle3" fps 13 ACT_IDLE 1
$sequence burst(small) "archer_swim(small_burst)" fps 18
$sequence swim "archer_swim" LX fps 15 LOOP ACT_WALK 1
$sequence swim_fast "archer_swim" LX fps 30 LOOP ACT_RUN 1
$sequence bite "archer_bite" LOOP fps 13 { event 1 5 } ACT_MELEE_ATTACK1 1
$sequence flinch1 "archer_flinch1" fps 13 ACT_SMALL_FLINCH 1
$sequence flinch2 "archer_flinch2" fps 13 ACT_SMALL_FLINCH 1
$sequence die1 "archer_death1" fps 13 ACT_DIESIMPLE 1
$sequence die2 "archer_death2" fps 13 ACT_DIESIMPLE 1
$sequence shoot "archer_shoot" fps 18 { event 2 9 } 
$sequence surface "archer_surface" fps 13
$sequence sink "archer_dead_sink" fps 14
$sequence dead_float "archer_dead_idle" fps 14
$sequence 180left "archer_180left" fps 14 ACT_TURN_LEFT 1
$sequence 180right "archer_180right" fps 14 ACT_TURN_RIGHT 1
