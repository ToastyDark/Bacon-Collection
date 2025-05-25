# Store the map name into 'kit_editor.map_name'
execute store result storage ctf:temp kit_editor.map_index int 1 run scoreboard players get @s ctf_kit_editor_map
function ctf:lobby/edit_kit/interaction/kit_num/display_kit_name_store_map with storage ctf:temp kit_editor

# Store arguments for ctf:player/kit/get/single, EX: {map:desert_maze, kit_num:1, slot:26}
data modify storage ctf:temp kit_editor.map set from storage ctf:temp kit_editor.map_name
execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num
data modify storage ctf:temp kit_editor.slot set value 26

# Actually get the kit name item
function ctf:player/kit/get/single with storage ctf:temp kit_editor

# Store the text component
data modify storage ctf:temp kit_editor.display_text set from storage ctf:temp kit_item.item.components.minecraft:custom_name

# Display
function ctf:lobby/edit_kit/interaction/kit_num/display_kit_name_internal with storage ctf:temp kit_editor