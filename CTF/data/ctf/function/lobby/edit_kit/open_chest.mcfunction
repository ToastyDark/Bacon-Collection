# Reset Open Echest
scoreboard players reset @s ctf_lobby_echest_open

# Check if player specifically opened Kit Editor Chest
execute in void positioned 43 79 -105 unless entity @s[dx=-4,dy=5,dz=-4] run return fail

# Save and Clear Ender Chest before showing kit ~dark
execute unless entity @s[tag=ctf_kit_still_editing] run function ecsave:clear {"path":"main"}

# Mark player as still editing kit
function ctf:lobby/edit_kit/still_editing/start


# ---------------- Begin Kit Process ----------------

# Store kit editor num and map into temp data
execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num

# Store map data 
data modify storage ctf:temp kit_editor.temp.storage set value "ctf:temp kit_editor.map"
execute store result storage ctf:temp kit_editor.temp.map_index int 1 run scoreboard players get @s ctf_kit_editor_map

function ctf:lobby/edit_kit/map_id_to_name with storage ctf:temp kit_editor.temp

# Load Echest Data
function ctf:player/kit/rearrange/echest_load_layout with storage ctf:temp kit_editor