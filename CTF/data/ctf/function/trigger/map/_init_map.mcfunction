# Set game as loading map
data modify storage ctf:temp loading_map set value active


# Run the commands for the selected map
$function ctf:map/$(map)/init_begin