# Global tick for other stuff

# Interaction Checks
execute as @e[type=interaction,tag=ctf_kit_num_int] run function ctf:lobby/edit_kit/interaction/kit_num/tick
execute as @e[type=interaction,tag=ctf_kit_map_int] run function ctf:lobby/edit_kit/interaction/kit_map/tick