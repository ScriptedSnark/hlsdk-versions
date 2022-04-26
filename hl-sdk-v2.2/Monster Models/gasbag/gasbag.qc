$modelname /quiver/valve/models/gasbag.mdl
$cd /quiver/valve/models/gasbag
$cdtexture /quiver/valve/models/gasbag/maps_8bit
$scale 1.0

// whole body
$body studio "gasbag_ref"

$sequence spin "gasbag_spin" loop fps 15
$sequence squash "gasbag_squash" loop fps 15
