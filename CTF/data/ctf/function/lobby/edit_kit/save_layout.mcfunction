# *(adapted from open_chest)

# Store kit editor num and map into temp data
execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num

# Store map data 
data modify storage ctf:temp kit_editor.temp.storage set value "ctf:temp kit_editor.map"
execute store result storage ctf:temp kit_editor.temp.map_index int 1 run scoreboard players get @s ctf_kit_editor_map

function ctf:lobby/edit_kit/map_id_to_name with storage ctf:temp kit_editor.temp

#  Save Echest Data
function ctf:player/kit/rearrange/echest_save_layout with storage ctf:temp kit_editor

#say CTF: Saved Kit Layout!
title @s actionbar {"text":"Saved kit layout!","color":"green","bold": true}