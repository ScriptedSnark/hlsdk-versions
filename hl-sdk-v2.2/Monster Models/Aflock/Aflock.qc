$modelname valve/models/Aflock.mdl
$cd valve/models/Aflock
$cdtexture valve/models/Aflock/maps_8bit

$scale 1.0

$hbox 0 "Bone12" -8.77 -6.30 -2.80  8.74 12.07 2.36
//$hbox 0 "Bone13" -1.02 -6.80 -1.96  0.89 0.00 0.00
//$hbox 0 "Bone02" -6.39 0.00 -1.21  0.00 2.51 0.63
//$hbox 0 "Bone07" 0.00 0.00 -1.21  6.00 2.51 0.63

// whole body
$body body "Aflock_reference"

$sequence fly "Aflock_fly1" loop fps 30 ACT_FLY 9	
$sequence fly2 "Aflock_fly2" loop fps 24 ACT_FLY 2

//$sequence bankL "aflock_bankL" loop fps 24
//$sequence bankR "aflock_bankR" loop fps 24
//$sequence hit	"aflock_hit" fps 30 ACT_BIG_FLINCH 1

$sequence wounded "aflock_wounded" fps 24 LOOP ACT_FALL 1
$sequence crash "aflock_crash" fps 30 ACT_LAND 1
