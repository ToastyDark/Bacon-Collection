# Reset Open Echest
scoreboard players reset @s ctf_lobby_echest_open

# Store kit editor num and map into temp data
execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num

# Store map data 
function ctf:lobby/edit_kit/map_id_to_name {"storage":"ctf:temp kit_editor.map","scoreboard":"ctf_kit_editor_map"}

#  Load Echest Data
function ctf:player/kit/rearrange/echest_load_layout with storage ctf:temp kit_editor