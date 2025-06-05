# Void Forceload 
$execute in void run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Forceload 
$execute in clone run forceload add $(nw_x) $(nw_z) $(se_x) $(se_z)

# Clone Map
function ctf:map/sandcastle/reset_map/clone with storage ctf:map sandcastle.pos
#schedule function ctf:map/sandcastle/reset_map/schedule_clone 3t replace