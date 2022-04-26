

$modelname valve/models/v_chub.mdl
$cd valve/models/v_chub
$cdtexture valve/models/v_chub/maps_8bit

$scale 1.0


// whole body
$body body "vchub_Template(Hands)1" 
$body body "vchub_Template(toad)1" 


$sequence idle1 "vchub_Idle1(Subtle)" loop fps 16
$sequence fidgetLick "vchub_Fidget1(lick)" fps 16
$sequence fidgetCroak "vchub_Fidget1(Croak)" fps 16
$sequence down "vchub_Down1" fps 16
$sequence up "vchub_Up1" fps 30
$sequence Throw "vchub_Throw1" fps 24 