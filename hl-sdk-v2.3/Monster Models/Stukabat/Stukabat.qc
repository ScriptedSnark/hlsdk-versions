$modelname valve/models/stukabat.mdl
$cd valve/models/stukabat
$cdtexture valve/models/stukabat/Maps_8bit
$scale 1.0

// whole body
$body studio "stukabat_Template_Biped1"


$eyeposition 0 0 22
//$eyeposition 0 16 22


$sequence Land_ceiling "STUKABAT_Air_to_Ceiling1" fps 12 ACT_STAND 1
$sequence Land_ground "STUKABAT_Air-to-Land1" fps 30 ACT_LAND 1
$sequence Attack_bomb "STUKABAT_Attack1(Bomb)" fps 20 ACT_RANGE_ATTACK1 1 { event 1 20 }
$sequence Attack_claw "STUKABAT_Attack1(Claw)" fps 12 ACT_RANGE_ATTACK2 1
$sequence Dive_cycler "STUKABAT_Dive1" Fps 15 ACT_RANGE_ATTACK2 1
$sequence Death_fall_simple "STUKABAT_Fall_Death1(Simple)" fps 12 ACT_DIESIMPLE 1
$sequence Death_fall_violent "STUKABAT_Fall_Death1(Violent)" fps 12 ACT_DIEVIOLENT 1
$sequence fall_cycler "STUKABAT_Falling1" Fps 15 ACT_FALL 1
$sequence Flinch_big "STUKABAT_Flinch1(Big)" fps 12 ACT_BIG_FLINCH 1
$sequence Flinch_small "STUKABAT_Flinch1(Small)" fps 12 ACT_SMALL_FLINCH 1
$sequence Flying_cycler "STUKABAT_Fly(In_Air)1" fps 35 loop ACT_FLY 1 { event 8 21 } { event 9 18 }
$sequence Flying_turn_left "STUKABAT_Fly(Turn_Left)1" fps 12 ACT_FLY_LEFT 1
$sequence Flying_turn_right "STUKABAT_Fly(Turn_Right)1" fps 12 ACT_FLY_RIGHT 1
$sequence Hover "STUKABAT_Fly_in_Place1" fps 30 loop ACT_HOVER 1 { event 9 3 }
$sequence Die_on_ground "STUKABAT_Ground_Die1" fps 24 ACT_DIESIMPLE 1
$sequence Flinch_on_ground "STUKABAT_Ground_Flinch1" fps 12
$sequence Eat_on_ground "STUKABAT_Eat1" fps 12 loop ACT_EAT 1
$sequence Disply_fidget_on_ground "STUKABAT_Ground_Idle(Display)2" fps 12 loop ACT_CROUCHIDLE 1
$sequence Subtle_fidget_on_ground "STUKABAT_Ground_Idle(Subtle)1" fps 12 ACT_CROUCHIDLE 5
$sequence Ground_walk "STUKABAT_Ground_Walk1" fps 14 loop LX ACT_WALK 1
$sequence Subtle_fidget "STUKABAT_Hang_Idle1(Subtle)" fps 12 loop ACT_IDLE 5
$sequence Preen_fidget  "STUKABAT_Hang_Idle2(Preen)" fps 12 ACT_IDLE 1
$sequence Swing_fidget  "STUKABAT_Hang_Idle3(Swing)" fps 12 ACT_IDLE 2
$sequence Take_off_from_land "STUKABAT_Land_to_Air(Take-off)1" fps 12 ACT_LEAP 1
