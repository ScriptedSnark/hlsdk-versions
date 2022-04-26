/*

tentacle2.qc 

*/

$scale 1.0

$modelname valve/models/tentacle2.mdl
$cd valve/models/tentacle2
$cdtexture valve/models/Tentacle2/maps_8bit
$externaltextures

$origin -64 0 -28 90

$bbox -400 -400 0 400 400 850
$cbox -400 -400 0 400 400 850

// whole body
$body studio "TENT2_Template_Biped1"

$flags 512	// complex model intersection

$hbox 1 "Bone01"  -51.12  -1.59 -30.00    40.63 121.07  30.00
$hbox 1 "Bone02"  -39.84   0.00 -25.00    31.32 108.89  25.00
$hbox 1 "Bone03"  -43.97   0.00 -20.00    21.18 103.02  20.00
$hbox 1 "Bone04"  -34.24   0.00 -20.00    16.82  79.99  20.00
$hbox 1 "Bone05"  -30.00  -6.42 -20.00    16.69  73.93  20.00
$hbox 1 "Bone06"  -28.65  -4.72 -20.00    13.12  77.57  20.00
$hbox 1 "Bone07"  -26.86  -4.93 -15.00    17.81  68.66  15.00
$hbox 1 "Bone08"  -21.14   0.00 -13.93    20.22  75.00  12.24
$hbox 1 "Bone09"  -25.00   5.00 -17.70    20.00  30.00  17.03
$hbox 2 "Bone09"  -50.00  30.00 -17.70    15.00 105.00  17.03
$hbox 2 "Bone11"    3.28  -1.39  -6.04    16.72  11.62   3.69
$hbox 2 "Bone12"   -0.18  -0.50  -0.62    12.02   7.47  14.28
$hbox 2 "Bone13"   -3.58  -4.48   0.86    -0.37   0.25  11.59
$hbox 2 "Bone15"  -13.86  -2.11  -6.21     0.79  10.91   3.53
$hbox 2 "Bone16"   -9.32  -0.80  -0.79     2.88   7.16  12.86
$hbox 2 "Bone17"    0.38  -3.60   2.11     3.60   1.13  12.84
$hbox 3 "Bone09"  -60.00 105.00 -10.00   -10.00 145.00  10.00
$hbox 3 "Bone09"  -85.00 145.00 -10.00   -25.00 165.00  10.00
$hbox 3 "Bone09" -110.16 165.00 -10.00   -65.00 178.50  10.00
//hbox 4 "Bone09" -126.16 149.00 -26.00   -81.00 194.50  26.00

$attachment 0 "bone09" -110.16 178.5 0 X -1

// events
// 1 bang
// 2 tap scrape
// 3 start killing swing
// 4 end killing swing
// 5 just "whoosh" sound
// 6 light tap
// 7 roar
// 8 search 
// 9 swing

$sequence Pit_Idle "TENT2_Rise1(From_Pit)" frame 0 0 fps 15 loop node 9

$sequence rise_to_Temp1 "TENT2_Rise1(From_Pit)" fps 15 { event 6 23 } { event 5002 23 "4" } { event 6 30 } { event 5002 30 "4" } rtransition 9 1
$sequence Temp1_to_Floor "TENT2_Level1_Temp_to_FloorTap1" fps 30 { event 2 26 }  { event 5002 26 "4" }  transition 1 4

$sequence Floor_Idle "TENT2_Floor_Idle(Subtle)1" LOOP fps 10 ACT_1010 5 node 4 { event 6 0 } { event 5002 0 "2" }
$sequence Floor_Fidget_Pissed "TENT2_Floor_Fidget(Pissed)1" LOOP fps 10 ACT_1010 1 node 4 { event 6 0 } { event 5002 0 "2" } { event 7 5 }
$sequence Floor_Fidget_SmallRise "TENT2_Floor_Fidget(SmallRise)1" LOOP fps 10 ACT_1010 1 node 4 { event 6 0 } { event 5002 0 "2" }
$sequence Floor_Fidget_Wave "TENT2_Floor_Fidget(Wave)1" LOOP fps 10 ACT_1010 1 node 4 { event 6 0 } { event 5002 0 "2" }
$sequence Floor_Strike "TENT2_Floor_Strike1" ACT_1030 1 fps 15  { event 5002 0 "2" } { event 3 6 } { event 1 8 } { event 5002 8 "8" } { event 4 12 } node 4
$sequence Floor_Tap "TENT2_Floor_Tap(Near)" "TENT2_Floor_Tap(Far)" blend X 86 366 LOOP fps 15 ACT_1020 1 { event 6 7 } { event 5002 7 "4" } { event 6 13 } { event 5002 13 "4" } { event 6 20 } { event 5002 20 "4" } node 4
$sequence Floor_Rotate "TENT2_Floor_Rotate1" fps 25 rtransition 4 12
$sequence Floor_Rear "TENT2_Floor_Rotate_to_Rear1" fps 30 rtransition 12 13
$sequence Floor_Rear_Idle "TENT2_Floor_Rear_Idle1" LOOP fps 15 ACT_1040 1 node 13

$sequence Floor_to_Lev1 "TENT2_Level1_Tap_To_Lev1Temp" fps 30 transition 4 1

$sequence Lev1_Idle "TENT2_Level1_Idle(Subtle)1" LOOP fps 10 ACT_1011 5 node 1
$sequence Lev1_Fidget_Claw "TENT2_Level1_Fidget1(Claw)" LOOP fps 10 ACT_1011 1 { event 7 11 } { event 2 16 } { event 7 29 } { event 6 35 } node 1
$sequence Lev1_Fidget_Shake "TENT2_Level1_Fidget1(Shake)" LOOP fps 10 ACT_1011 1 node 1 { event 9 16 } { event 9 38 }
$sequence Lev1_Fidget_Snap "TENT2_Level1_Fidget1(Snap)" LOOP fps 10 ACT_1011 1 node 1 { event 9 5 } { event 9 16 } { event 9 23 } { event 9 33 }
$sequence Lev1_Strike "TENT2_Level1_Strike1" fps 30 ACT_1031 1 { event 3 9 } { event 1 11 } { event 5002 11 "8" }  { event 4 20 } node 1
$sequence Lev1_Tap "TENT2_Level1_Tap(Near)1" "TENT2_Level1_Tap(Far)1" blend X 226 376 LOOP fps 15 ACT_1021 1 { event 6 7 } { event 5002 7 "4" } { event 6 13 } { event 5002 13 "4" } node 1
$sequence Lev1_Rotate "TENT2_Level1_Rotate1" fps 25 rtransition 1 5
$sequence Lev1_Rear "TENT2_Level1_Rotate_to_Rear1" fps 30 rtransition 5 6
$sequence Lev1_Rear_Idle "TENT2_Level1_Rear_Idle1" LOOP fps 15 ACT_1041 1 node 6

$sequence Lev1_to_Lev2 "TENT2_Level1_to_Level2" fps 30 rtransition 1 2

$sequence Lev2_Idle "TENT2_Level2_Idle(Subtle)1" LOOP fps 10 ACT_1012 5 node 2
$sequence Lev2_Fidget_Shake "TENT2_Level2_Fidget1(Shake)" LOOP fps 10 ACT_1012 1 node 2 { event 7 10 } 
$sequence Lev2_Fidget_Swing "TENT2_Level2_Fidget1(Swing)" LOOP fps 10 { event 5 17 }  node 2
$sequence Lev2_Fidget_Tut "TENT2_Level2_Fidget1(Tut)" LOOP fps 10 ACT_1012 1 node 2
$sequence Lev2_Strike "TENT2_Level2_Strike1" fps 25 ACT_1032 1 { event 3 13 } { event 1 16 } { event 5002 16 "8" } { event 4 20 } node 2
$sequence Lev2_Tap "TENT2_Level2_Tap(Near)1" "TENT2_Level2_Tap(Far)1" blend X 226 376 LOOP fps 15  ACT_1022 1 { event 6 7 } { event 5002 7 "4" } { event 6 13 } { event 5002 13 "4" } node 2
$sequence Lev2_Rotate "TENT2_Level2_Rotate1" fps 25 rtransition 2 7
$sequence Lev2_Rear "TENT2_Level2_Rotate_to_Rear1" fps 30 rtransition 7 8
$sequence Lev2_Rear_Idle "TENT2_Level2_Rear_Idle1" LOOP fps 15 ACT_1042 1 node 8

$sequence Lev2_to_Lev3 "TENT2_Level2_to_Level3" fps 30 rtransition 2 3

$sequence Lev3_Idle "TENT2_Level3_Idle(Subtle)1" LOOP fps 10 ACT_1013 5 node 3
$sequence Lev3_Fidget_Shake "TENT2_Level3_Fidget(Shake)" LOOP fps 10 ACT_1013 1 node 3
$sequence Lev3_Fidget_Side "TENT2_Level3_Fidget1(side)" LOOP fps 10 ACT_1013 1 node 3
$sequence Lev3_Fidget_Swipe "TENT2_Level3_Fidget1(Swipe)" LOOP fps 10 { event 5 12 } { event 7 16 } event node 3
$sequence Lev3_Strike "TENT2_Level3_Strike1" fps 15 ACT_1033 1 { event 5 1 } { event 3 6 } { event 1 10 }  { event 5002 10 "8" } { event 4 12 } node 3
$sequence Lev3_Tap "TENT2_Level3_Tap(Near)1" "TENT2_Level3_Tap(Far)1" blend X 226 376 LOOP fps 15 ACT_1023 1 { event 6 7 } { event 5002 7 "4" } { event 6 13 } { event 5002 13 "4" } node 3
$sequence Lev3_Rotate "TENT2_Level3_Rotate1" fps 25 rtransition 3 10
$sequence Lev3_Rear "TENT2_Level3_Rotate_to_Rear1" fps 30 rtransition 10 11
$sequence Lev3_Rear_Idle "TENT2_Level3_Rear_Idle1" LOOP fps 15 ACT_1043 1 node 11

$sequence Lev1_Door_reach "TENT2_Level1_Door_Reach1" fps 15

$sequence Lev3_to_Engine "TENT2_Lev3_Rear_Idle_to_Engine1" rtransition 11 14

$origin -64 0 -28 270

$sequence Engine_Idle "TENT2_Engine_Idle1" LOOP fps 15 ACT_1044 1 node 14

$sequence Engine_Sway "TENT2_Engine_Fidget(Sway)1" LOOP fps 15 ACT_1044 1 node 14
$sequence Engine_Swat "TENT2_Engine_Fidget(Swat)1" LOOP fps 15 ACT_1044 1 { event 1 8 } { event 5002 8 "12" } node 14
$sequence Engine_Bob "TENT2_Engine_Fidget(Bob)1" LOOP fps 15 ACT_1044 1 node 14

$sequence Engine_death1 "TENT2_Death1" fps 15 node 14
$sequence Engine_death2 "TENT2_Death2" fps 15 node 14
$sequence Engine_death3 "TENT2_Death3" fps 15 node 14

$origin -64 0 -28 90

$sequence tentacle_grab_idle "..\cinematics\c1a4i_tentacle_grab\tentacle1" frame 0 0 fps 1 loop
$sequence tentacle_grab "..\cinematics\c1a4i_tentacle_grab\tentacle1" fps 15






