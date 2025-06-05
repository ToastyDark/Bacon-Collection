# Void Forceload 
$execute in void run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Forceload 
$execute in clone run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Map
#function ctf:map/sandcastle/reset_map/clone with storage ctf:map sandcastle.pos
#schedule function ctf:map/sandcastle/reset_map/schedule_clone 3t replace
$execute positioned $(se_x) $(se_y) $(se_z) run clone from clone ~ ~ ~ $(nw_x) ~$(map_height) $(nw_z) to void ~ ~ ~


# Void Forceload 
$execute in void run forceload remove $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Forceload 
$execute in clone run forceload remove $(nw_x) $(nw_z) $(se_x) $(se_z)