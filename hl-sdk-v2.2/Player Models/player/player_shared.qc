
// Charactor Studio R2 automatically renames bones, so rename then back to be compatible with old smd's
$renamebone "Bip01 L Thigh" "Bip01 L Leg"
$renamebone "Bip01 L Calf" "Bip01 L Leg1"
$renamebone "Bip01 R Thigh" "Bip01 R Leg"
$renamebone "Bip01 R Calf" "Bip01 R Leg1"
$renamebone "Bip01 L Clavicle" "Bip01 L Arm"
$renamebone "Bip01 L UpperArm" "Bip01 L Arm1"
$renamebone "Bip01 L Forearm" "Bip01 L Arm2"
$renamebone "Bip01 R Clavicle" "Bip01 R Arm"
$renamebone "Bip01 R UpperArm" "Bip01 R Arm1"
$renamebone "Bip01 R Forearm" "Bip01 R Arm2"

// make attachments points for muzzleflash effects
$attachment 0 "Bip01 R Hand" 20 2 5 X 1
$attachment 1 "Bip01 R Hand" 15 1.5 3.75 X 1
$attachment 2 "Bip01 R Hand" 30 3 7.5 X 1

// add backbone
$controller 0 "Bip01 Spine" XR -30 30
$controller 1 "Bip01 Spine1" XR -30 30
$controller 2 "Bip01 Spine2" XR -30 30
$controller 3 "Bip01 Spine3" XR -30 30

// set hitboxes
$hbox 3 "Bip01 Pelvis" -4.69 -4.44 -6.75  4.00 5.56 6.75
$hbox 6 "Bip01 L Leg" 2.66 -3.69 -3.09  18.16 4.88 3.31
$hbox 6 "Bip01 L Leg1" 0.38 -3.97 -2.84  17.60 4.00 2.94
$hbox 6 "Bip01 L Foot" -0.59 -2.34 -2.63  3.79 8.00 2.19
$hbox 7 "Bip01 R Leg" 2.47 -3.69 -3.16  18.13 4.88 3.38
$hbox 7 "Bip01 R Leg1" 0.31 -3.97 -2.84  17.60 3.94 2.97
$hbox 7 "Bip01 R Foot" -0.56 -2.34 -2.19  3.81 8.00 2.66
$hbox 3 "Bip01 Spine1" -3.25 -5.50 -5.50  4.83 5.50 5.50
$hbox 2 "Bip01 Spine2" -0.06 -5.53 -7.59  8.00 7.00 7.59
$hbox 2 "Bip01 Spine3" -2.25 -6.81 -6.31  6.50 5.09 6.31
$hbox 2 "Bip01 Neck" -3.11 -1.50 -3.00  2.05 3.50 3.00
$hbox 1 "Bip01 Head" 0.09 -3.66 -3.00  8.41 5.09 3.00
$hbox 4 "Bip01 L Arm" 0.94 -2.88 -4.13  5.44 4.28 3.50
$hbox 4 "Bip01 L Arm1" -2.16 -2.34 -2.56  11.56 3.41 2.38
$hbox 4 "Bip01 L Arm2" 0.59 -1.81 -2.19  10.75 2.84 2.41
$hbox 4 "Bip01 L Hand" 0.00 -1.00 -2.00  3.00 1.50 3.50
$hbox 5 "Bip01 R Arm" 1.38 -2.84 -3.56  5.69 4.31 4.31
$hbox 5 "Bip01 R Arm1" -1.88 -2.47 -2.16  11.81 3.28 2.81
$hbox 5 "Bip01 R Arm2" 0.44 -1.97 -2.34  10.59 2.72 2.22
$hbox 5 "Bip01 R Hand" 0.00 -1.00 -2.00  3.00 1.50 3.50
//$hbox 0 "Box01" -12.25 -4.00 -1.56  12.25 4.00 1.56


$sequence look_idle "new_idle2" loop fps 14 ACT_IDLE 2
$sequence idle "new_idle" loop fps 14 ACT_IDLE 1
$sequence deep_idle "new_idle3" loop fps 12 ACT_IDLE 4
$sequence run2 "new_run" lx loop fps 40 ACT_RUN 1
$sequence walk2handed "new_walk" lx loop fps 26 ACT_WALK 1
$sequence 2handshoot "shoot_2handed" fps 20 ACT_RANGE_ATTACK1 1
$sequence crawl "crouch_moveforward" lx loop fps 22 ACT_CROUCH 1 origin 0 0 18
$sequence crouch_idle "crouch_idle" loop fps 12 ACT_CROUCHIDLE 1 origin 0 0 18 rotate 8
$sequence jump "player_jump"  fps 30 ACT_HOP 1
$sequence long_jump "player_longjump" LX fps 24 ACT_LEAP 1
$sequence swim "player_swim" loop fps 14 ACT_SWIM 1 origin 0 0 0
$sequence treadwater "player_treadwater" loop fps 14 ACT_HOVER 1


$sequence run "ref_run" lx loop fps 31
$sequence walk "ref_walk" lx loop fps 31
$sequence aim_2 "ref_aimdown_twohanded" "ref_aimup_twohanded" loop fps 14 blend XR -45 45
$sequence shoot_2 "ref_shootdown_twohanded" "ref_shootup_twohanded" loop fps 14 blend XR -45 45
$sequence aim_1 "ref_aimdown_onehanded" "ref_aimup_onehanded" loop fps 14 blend XR -45 45
$sequence shoot_1 "ref_shootdown_onehanded" "ref_shootup_onehanded" loop fps 14 blend XR -45 45


//death animations
$sequence die_simple "die_simple" fps 22 ACT_DIESIMPLE 1 { event 2001 10 }
$sequence die_backwards1 "die_backward" fps 26 ACT_DIEBACKWARD 4 { event 2001 14 }
$sequence die_backwards "player_die2" fps 30 ACT_DIEBACKWARD 1 { event 2001 15 }
$sequence die_forwards "player_die1" fps 26 ACT_DIEFORWARD 1 { event 2001 9 }
$sequence headshot "die_headshot" fps 24 ACT_DIE_HEADSHOT 4 { event 2001 23 }
$sequence die_spin "player_die3" fps 30  ACT_DIE_HEADSHOT 1 { event 2001 16 }
$sequence gutshot "die_gutshot" fps 26 ACT_DIE_GUTSHOT 1 { event 2001 23 }

// fancy animation
// crowbar, grenade
$sequence ref_aim_crowbar "ref_aimdown_crowbar" "ref_aimup_crowbar" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_crowbar "ref_swingdown_crowbar" "ref_swingup_crowbar" blend XR -45 45 fps 24
$sequence crouch_aim_crowbar "crouch_aimdown_crowbar" "crouch_aimup_crowbar" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_crowbar "crouch_swingdown_crowbar" "crouch_swingup_crowbar" blend XR -45 45 fps 24 origin 0 0 18
// tipmines, satchel
$sequence ref_aim_trip "ref_aimdown_trip" "ref_aimup_trip" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_trip "ref_placedown_trip" "ref_placeup_trip" blend XR -45 45 fps 18
$sequence crouch_aim_trip "crouch_aimdown_trip" "crouch_aimup_trip" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_trip "crouch_placedown_trip" "crouch_placeup_trip" blend XR -45 45 fps 16 origin 0 0 18
// 9mm
$sequence ref_aim_onehanded "ref_aimdown_onehanded" "ref_aimup_onehanded" blend XR -50 35 fps 12 LOOP 
$sequence ref_shoot_onehanded "ref_shootdown_onehanded" "ref_shootup_onehanded" blend XR -50 35 fps 16 { event 5011 0 "21" }
$sequence crouch_aim_onehanded "crouch_aimdown_onehanded" "crouch_aimup_onehanded" blend XR -50 35 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_onehanded "crouch_shootdown_onehanded" "crouch_shootup_onehanded" blend XR -50 35 fps 16 { event 5011 0 "21" } origin 0 0 18
// python
$sequence ref_aim_python "ref_aimdown_onehanded" "ref_aimup_onehanded" blend XR -50 35 fps 12 LOOP 
$sequence ref_shoot_python "ref_shootdown_python" "ref_shootup_python" blend XR -50 35 fps 16  { event 5011 0 "31" }
$sequence crouch_aim_python "crouch_aimdown_onehanded" "crouch_aimup_onehanded" blend XR -50 35 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_python "crouch_shootdown_python" "crouch_shootup_python" blend XR -50 35 fps 16  { event 5011 0 "31" } origin 0 0 18
// shotgun
$sequence ref_aim_shotgun "ref_aimdown_shotgun" "ref_aimup_shotgun" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_shotgun "ref_shootdown_shotgun" "ref_shootup_shotgun" blend XR -45 45 fps 15 { event 5021 0 "51" }
$sequence crouch_aim_shotgun "crouch_aimdown_shotgun" "crouch_aimup_shotgun" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_shotgun "crouch_shootdown_shotgun" "crouch_shootup_shotgun" blend XR -45 45 fps 15 { event 5021 0 "51" } origin 0 0 18
// gauss
$sequence ref_aim_gauss "ref_aimdown_guass" "ref_aimup_guass" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_gauss "ref_shootdown_guass" "ref_shootup_guass" blend XR -45 45 fps 15
$sequence crouch_aim_gauss "crouch_aimdown_guass" "crouch_aimup_guass" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_gauss "crouch_shootdown_guass" "crouch_shootup_guass" blend XR -45 45 fps 15 origin 0 0 18
// mp5
$sequence ref_aim_mp5 "ref_aimdown_mp5" "ref_aimup_mp5" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_mp5 "ref_shootdown_mp5" "ref_shootup_mp5" blend XR -45 45 fps 20 LOOP { event 5001 0 "40" }
$sequence crouch_aim_mp5 "crouch_aimdown_mp5" "crouch_aimup_mp5" blend XR -30 40 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_mp5 "crouch_shootdown_mp5" "crouch_shootup_mp5" blend XR -30 40 fps 20 LOOP { event 5001 0 "40" } origin 0 0 18
// rpg
$sequence ref_aim_rpg "ref_aimdown_rpg" "ref_aimup_rpg" blend XR -45 40 fps 12 LOOP
$sequence ref_shoot_rpg "ref_shootdown_rpg" "ref_shootup_rpg" blend XR -45 40 fps 18
$sequence crouch_aim_rpg "crouch_aimdown_rpg" "crouch_aimup_rpg" blend XR -45 40 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_rpg "crouch_shootdown_rpg" "crouch_shootup_rpg" blend XR -45 40 fps 18 origin 0 0 18
// egon
$sequence ref_aim_egon "ref_aimdown_egon" "ref_aimup_egon" blend XR -45 35 fps 12 LOOP
$sequence ref_shoot_egon "ref_aimdown_egon" "ref_aimup_egon" blend XR -45 35 fps 18 LOOP
$sequence crouch_aim_egon "crouch_aimdown_egon" "crouch_aimup_egon" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_egon "crouch_aimdown_egon" "crouch_aimup_egon" blend XR -45 45 fps 18 LOOP origin 0 0 18
// squeak
$sequence ref_aim_squeak "ref_aimdown_squeak" "ref_aimup_squeak" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_squeak "ref_shootdown_squeak" "ref_shootup_squeak" blend XR -45 45 fps 14
$sequence crouch_aim_squeak "crouch_aimdown_squeak" "crouch_aimup_squeak" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_squeak "crouch_shootdown_squeak" "crouch_shootup_squeak" blend XR -45 45 fps 14 origin 0 0 18
// hive
$sequence ref_aim_hive "ref_aimdown_hive" "ref_aimup_hive" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_hive "ref_shootdown_hive" "ref_shootup_hive" blend XR -45 45 fps 15
$sequence crouch_aim_hive "crouch_aimdown_hive" "crouch_aimup_hive" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_hive "crouch_shootdown_hive" "crouch_shootup_hive" blend XR -45 45 fps 15 origin 0 0 18
// crossbow
$sequence ref_aim_bow "ref_aimdown_bow" "ref_aimup_bow" blend XR -45 45 fps 12 LOOP
$sequence ref_shoot_bow "ref_aimdown_bow" "ref_aimup_bow" blend XR -45 45 fps 16
$sequence crouch_aim_bow "crouch_aimdown_bow" "crouch_aimup_bow" blend XR -45 45 fps 12 LOOP origin 0 0 18
$sequence crouch_shoot_bow "crouch_aimdown_bow" "crouch_aimup_bow" blend XR -45 45 fps 16 origin 0 0 18


//dead poses, we have to change the origin because of the way the 
// player model is arranged (sjb)
$origin 0 0 0
$sequence deadback "dead_pose_back" fps 10 
$sequence deadsitting "dead_pose_sitting" fps 10 
$sequence deadstomach "dead_pose_stomach" fps 10 
$sequence deadtable "dead_pose_table" fps 10
// ***** DO NOT PUT ANY MORE SEQUENCES BELOW THIS LINE! (sjb)

