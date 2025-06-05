# Global Map Reset
$function ctf:map/reset_map with storage ctf:map $(map).pos

# Map specfic reset
$function ctf:map/$(map)/reset_begin

# Set Map as reset
data modify storage ctf:game map_reset_done set value true