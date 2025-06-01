# Global tick for other stuff

# Interaction Checks
execute as @e[type=interaction,tag=ctf_kit_num_int] run function ctf:lobby/edit_kit/interaction/kit_num/tick
execute as @e[type=interaction,tag=ctf_kit_map_int] run function ctf:lobby/edit_kit/interaction/kit_map/tick

# Check if player modified a kit layout
execute as @a[tag=ctf_kit_still_editing] run function ctf:lobby/edit_kit/check_if_modified