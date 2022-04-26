$modelname valve/models/v_egon.mdl
$cd valve/models/v_egon
$cdtexture valve/models/v_egon/maps_8bit

$scale 1.0

// whole body
$body body "egon_newgun"
$body body "egon_hands"

$origin 0 0 64

$attachment 0 "Gauss" -10 2.5 0 X -1

$sequence idle1 "egon_idle1(sway)" loop fps 30
$sequence fidget1 "egon_fidget1(handle)" fps 30
$sequence altfireon "egon_fire2altfire" fps 30
$sequence altfirecycle "egon_altfirecycle" fps 30 loop
$sequence altfireoff "egon_altfire2fire" fps 30
$sequence fire1 "egon_firecycle1" fps 30 loop
$sequence fire2 "egon_firecycle2" fps 30 loop
$sequence fire3 "egon_firecycle3" fps 30 loop
$sequence fire4 "egon_firecycle4" fps 30 loop

$sequence draw	"egon_draw" fps 30
$sequence holster "egon_holster" fps 30	

