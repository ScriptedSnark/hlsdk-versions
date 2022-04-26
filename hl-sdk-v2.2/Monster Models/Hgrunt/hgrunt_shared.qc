/*
==============================================================================

shared file for the german and human grunt

==============================================================================
*/

// muzzleflash
$attachment 0 "bip01 R hand" 25 0 5 X 1

// right hand
$attachment 1 "bip01 R hand" 0 0 0 X 1

// head
$attachment 2 "bip01 head" 0 0 0 X 1

$controller 0 "bip01 head" XR -70 70

$eyeposition 0 0 73

// hit groups.
$hbox 6 "Bip01 L Leg" 0.00 -5.87 -6.23  15.69 5.64 2.13
$hbox 6 "Bip01 L Leg1" 0.00 -5.20 -4.62  22.15 5.67 4.60
$hbox 6 "Bip01 L Foot" -1.07 -1.91 -2.62  3.31 5.73 2.66
$hbox 6 "Bip01 L Toe02" 0.00 0.00 -2.50  1.79 2.43 2.68

$hbox 7 "Bip01 R Leg" 0.00 -5.87 -2.72  15.69 5.64 5.64
$hbox 7 "Bip01 R Leg1" 0.00 -5.20 -5.19  22.15 5.67 4.03
$hbox 7 "Bip01 R Foot" -1.07 -1.91 -2.68  3.31 5.73 2.27
$hbox 7 "Bip01 R Toe02" 0.00 0.00 -2.62  1.79 2.43 2.15

$hbox 3 "Bip01 Pelvis" -3.64 -5.57 -5.62  1.38 5.61 5.62
$hbox 3 "Bip01 Spine" 0.00 -15.38 -10.26  5.94 8.41 10.86
$hbox 3 "Bip01 Spine1" 0.00 -15.55 -10.33  5.94 8.42 10.93
$hbox 2 "Bip01 Spine2" 0.00 -13.67 -8.62  4.99 8.00 9.22
$hbox 2 "Bip01 Spine3" 0.00 -14.77 -8.93  9.56 8.00 9.53

$hbox 4 "Bip01 L Arm" 0.00 -7.37 -0.77  8.84 8.88 3.86
$hbox 4 "Bip01 L Arm1" -2.87 -1.99 -4.32  9.97 4.79 3.97
$hbox 4 "Bip01 L Arm2" -0.12 -0.95 -1.92  11.33 3.94 3.19
$hbox 4 "Bip01 L Hand" 0.00 -2.76 -1.62  7.56 1.41 2.88

$hbox 5 "Bip01 R Arm" 0.00 -7.37 -3.69  8.84 8.88 0.94
$hbox 5 "Bip01 R Arm1" -2.84 -1.99 -3.44  9.98 4.79 4.80
$hbox 5 "Bip01 R Arm2" -0.07 -0.94 -2.92  11.68 3.94 2.21
$hbox 5 "Bip01 R Hand" 0.00 -2.10 -2.89  14.75 2.05 1.60

$hbox 11 "Bip01 Head"  6.00 -5.22 -4.59  11.15 7.56 6.01
$hbox 11 "Bip01 Head" -2.70 -5.22 -4.59  6.00 1.00 6.01
$hbox 1  "Bip01 Head" -2.70  1.00 -4.59  6.00 7.56 6.01

//$hbox 0 "Line01" -10.46 -8.39 -0.73  17.01 7.15 2.20

$sequencegroupsize 64

/*
==============================================================================
COMMON ANIMATIONS
==============================================================================
*/
$sequence walk1 "hkwalk" LX fps 30 looping ACT_WALK 1 
$sequence run "run2" LX fps 30 looping ACT_RUN 1 
$sequence victorydance "shootcycledown" fps 21 ACT_VICTORY_DANCE 1
$sequence cower "grenadecover" fps 28 ACT_COWER 1
$sequence smflinch "flinchsm2" fps 20 ACT_SMALL_FLINCH 5
$sequence leftlegsmflinch "flinch_lleg" fps 22 ACT_FLINCH_LEFTLEG 1
$sequence rightlegsmflinch "flinch_rleg" fps 22 ACT_FLINCH_RIGHTLEG 1
$sequence rightarmflinch "flinch_rarm" fps 22 ACT_FLINCH_RIGHTARM 1
$sequence leftarmflinch "flinch_larm" fps 22 ACT_FLINCH_LEFTARM 1
$sequence launchgrenade "grenadelaunch" fps 30 { event 8 26 } ACT_RANGE_ATTACK2 1
$sequence throwgrenade "grenadethrow" fps 30 { event 7 46 } ACT_RANGE_ATTACK2 1
$sequence idle1 "idle1" fps 30 looping ACT_IDLE 1  
$sequence idle2 "idle2" fps 10 looping ACT_IDLE 1
$sequence combatidle "combatidle" fps 30 looping ACT_IDLE_ANGRY 1 
$sequence frontkick "sr_attack1" fps 35 ACT_MELEE_ATTACK1 1 {
{ event 3 14 } { event 2010 14 }
} 
$sequence crouching_idle "crouchidle" fps 30 looping
$sequence crouching_wait "crouchidle" fps 30 frame 10 16 ACT_CROUCH looping
$sequence crouching_mp5 "crouchshootcycle(down)" "crouchshootcycle(up)" LOOP fps 20 blend XR -45 45 ACT_RANGE_ATTACK1 1 {
{ event 4 10 } { event 5 12 } { event 6 14 } 
{ event 5001 10 "50" } { event 5001 12 "50" } { event 5001 14 "50" }
}
$sequence standing_mp5 "shootcycledown" "shootcycleup" LOOP fps 20 blend XR -45 45 {
{ event 4 10 } { event 5 12 } { event 6 14 } 
{ event 5001 10 "50" } { event 5001 12 "50" } { event 5001 14 "50" }
}
$sequence reload_mp5 "reloadhk" fps 40 { event 2 64 } ACT_RELOAD 1
$sequence crouching_shotgun "crouchshootcycle(down)" "crouchshootcycle(up)" fps 20 blend XR -45 45 ACT_RANGE_ATTACK1 1 {
{ event 4 10 } { event 5001 10 "51" }
}
$sequence standing_shotgun "shootcycledown" "shootcycleup" fps 20 blend XR -45 45 {
{ event 4 10 } { event 5001 10 "51" }
}
$sequence reload_shotgun "reloadhk" fps 40 { event 2 64 }
$sequence advance_signal "advancesig" fps 30 ACT_SIGNAL1 1 { event 10 11 }
$sequence flank_signal "flanksig" fps 40 ACT_SIGNAL2 1
$sequence retreat_signal "retreatsig" fps 30 ACT_SIGNAL3 1
$sequence drop_grenade "grenadedrop" FPS 40 ACT_SPECIAL_ATTACK1 1 { event 9 32 }
$sequence limpingwalk "limpwalk" LX LOOP ACT_WALK_HURT 1
$sequence limpingrun "limprun" LX LOOP ACT_RUN_HURT 1
$sequence 180L "180L2" fps 12 ACT_TURN_LEFT 1
$sequence 180R "180R2" fps 12 ACT_TURN_RIGHT 1
$sequence strafeleft "strafefire_l2" LX LY fps 30 looping ACT_STRAFE_LEFT 1
$sequence straferight "strafefire_r2" LX LY fps 30 looping ACT_STRAFE_RIGHT 1
/*
==============================================================================
DEATH ANIMATIONS
==============================================================================
*/
$sequence dieback1 "die1" X fps 25 ACT_DIEBACKWARD 1 { event 11 5 } { event 2001 17 }
$sequence dieforward "dieforward" X fps 26 ACT_DIEFORWARD 1 { event 11 13 } { event 2001 20 }
$sequence diesimple "die_simple" X fps 15 ACT_DIESIMPLE 1 { event 11 3 } { event 2001 10 }
$sequence diebackwards "dieback" X fps 30 ACT_DIEBACKWARD 1 { event 11 6 } { event 2001 12 }
$sequence dieheadshot "headshot" X fps 30 ACT_DIE_HEADSHOT 1 { event 11 1 } { event 2001 20 }
$sequence diegutshot "gutshot" X fps 30 ACT_DIE_GUTSHOT 1 { event 11 10 } { event 2001 39 }
/*
==============================================================================
GETTING DEVOURED BY BARNACLE
==============================================================================
*/
$sequence barnacled1 "barnacled_1" fps 18 ACT_BARNACLE_HIT 1
$sequence barnacled2 "barnacled_2" loop fps 30 ACT_BARNACLE_PULL 1
$sequence barnacled3 "barnacled_3" fps 18 ACT_BARNACLE_CHOMP 1
$sequence barnacled4 "barnacled_4" loop fps 15 ACT_BARNACLE_CHEW 1
/*
==============================================================================
DEAD POSES
==============================================================================
*/
$sequence dead_on_stomach "grunt_dead_pose" fps 10
$sequence deadstomach "grunt_dead_pose" fps 10
$sequence deadside "grunt_dead_pose2" fps 10
$sequence deadsitting "grunt_dead_pose3" fps 10
/*
==============================================================================
REPELLING ANIMATIONS
==============================================================================
*/
$sequence repel_jump "grunt_repel_jump" fps 22 ACT_HOVER 1
$sequence repel_repel "grunt_repel_shoot" fps 18 ACT_GLIDE 1 LOOP
$sequence repel_shoot "grunt_repel_shoot_down" "grunt_repel_shoot_up" blend XR -90 45 fps 18 ACT_FLY 1 LOOP {
{ event 4 1 } { event 5 3 } { event 6 5 } 
{ event 5001 1 } { event 5001 3 } { event 5001 5 }
}
$sequence repel_land "grunt_repel_land" fps 20 frame 10 20 ACT_LAND 1
$sequence repel_die "grunt_repel_die" fps 12
/*
==============================================================================
SCRIPTED SEQUENCES
==============================================================================
*/
$sequence dragholeidle "drag_into_hole(idle)" loop fps 10
$sequence draghole "drag_into_hole" fps 10 {
	{ event 1000 1 }
	{ event 1004 21 "debris/bustflesh1.wav" }
}
$sequence bustwall "bust_through" fps 20 { event 1000 1 }
$sequence hoprail "hop_railing" fps 22
$sequence converse1 "converse1" loop fps 14 origin 0 27 0
$sequence converse2 "converse2" loop fps 14 origin 0 27 0
$sequence startleleft "converse_startle(left)" fps 12 origin 0 27 0
$sequence startleright "converse_startle(right)" fps 12 origin 0 27 0
$sequence divecover "dive_cover" fps 22 origin 0 27 0
$sequence defuse "defuse_bomb" loop fps 14
$sequence corner1 "look_corner" loop fps 14
$sequence corner2 "look_corner2" loop fps 10
$sequence stone_toss "c2a5_stone_toss" fps 15
$sequence cliffdie "c2a5cliffdie" fps 36 {
	{ event 1001 10 }
	{ event 1000 10 }
	AX AY AZR
}
$sequence diveaside_idle "combatidle" fps 30 loop {
	origin -100 100 0
}
$sequence diveaside "diveaside_r" fps 30 {
	origin -100 100 0
	AX AY AZR
	{ event 4 10 } 
	{ event 5 12 } 
	{ event 6 14 }
	{ event 4 24 } 
	{ event 5 26 } 
	{ event 6 28 }
}
$sequence kneeldive_idle "crouchidle" fps 30 loop {
	origin 100 100 0
}
$sequence kneeldive "kneeldive" fps 30 {
	origin 100 100 0
	AX AY AZR
	{ event 4 10 } 
	{ event 5 12 } 
	{ event 6 14 }
	{ event 4 24 } 
	{ event 5 26 } 
	{ event 6 28 }
}
$sequence WM_button "whackman_button" fps 30 {
	AX AY AZR
}
$sequence WM_moatjump "moat_jump" fps 30 {
	origin 9.1 -11.7 0
	AX AY AZR
}
$sequence bustwindow "bustwindow" fps 24 {
	{ event 1003 15 "break" }
}
$sequence dragleft "drag_left" loop lx fps 28
$sequence dragright "drag_right" loop lx fps 28
$sequence trackwave "stand_wave_tracks(idle)" loop fps 24
$sequence trackdive "stand_wave_tracks(dive)" fps 28 {
	{ event 1003 38 "switch" }
}
$sequence flyback "stand_wave_tracks(flyback)" fps 25 {
	{ event 1003 30 "zap" }
	{ event 1008 25 "weapons/electro4.wav" }
}
$sequence impaled "impaled" fps 10 { event 1000 1 }
$sequence jumptracks "jump_tracks" fps 30
$sequence pipetoss "grenadethrow" fps 30
$sequence plunger "plunger" fps 22
