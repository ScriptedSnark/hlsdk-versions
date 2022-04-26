$modelname valve/models/v_tripmine.mdl
$cd valve/models/v_tripmine
$cdtexture valve/models/v_tripmine/maps_8bit

$scale 1.0

$origin 0 1.25 64.5

// whole body
$bodygroup hands
{
studio "tripmine_hands"
blank
}

$bodygroup mine
{
studio "tripmine_mine"
studio "tripmine_boned_world" scale 2.0
}

$sequence idle1 "tripmine_idle1(waver)" loop fps 30
$sequence idle2 "tripmine_idle2(subtle)" loop fps 30
$sequence arm1 "tripmine_arm1(drop)" fps 60
//$sequence arm2 "tripmine_arm2(place)" fps 30
$sequence place "tripmine_quickplace" fps 30
$sequence fidget "tripmine_fidget1(focus)" loop fps 30
$sequence holster "tripmine_holster" fps 30
$sequence draw "tripmine_draw" fps 30

$origin 0 -6.2 0

$sequence world "tripmine_bone_world_1fanim" loop
$sequence ground "tripmine_bone_world_1fanim(ground)" loop
