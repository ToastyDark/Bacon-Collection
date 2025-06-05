# Void Forceload 
$execute in void run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Forceload 
$execute in clone run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Map
$execute positioned $(nw_x) $(nw_y) $(nw_z) run clone from clone ~ ~ ~ $(se_x) ~$(map_height) $(se_z) to void ~ ~ ~
#clone from void ~ ~ ~ ~ ~ ~ to void ~ ~ ~ 