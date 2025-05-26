# Recursive function to select the kit after the last kit

scoreboard players add @s ctf_kit_editor_num 1

# vvv copied from display kit name
# ---Store arguments for ctf:player/kit/get/single, EX: {map:desert_maze, kit_num:1, slot:26}
data modify storage ctf:temp kit_editor.map set from storage ctf:temp kit_editor.map_name
execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num
data modify storage ctf:temp kit_editor.slot set value 26
# ---Actually get the kit name item
function ctf:player/kit/get/single with storage ctf:temp kit_editor
# ^^^ copied from display kit name

function ctf:lobby/edit_kit/interaction/kit_num/reached_last_kit with storage ctf:temp kit_item
execute if score $reached_last_kit ctf_kit_editor.temporary_variables matches 0 run function ctf:lobby/edit_kit/interaction/kit_num/select_last_kit

#scoreboard players remove @s ctf_kit_editor_num 1
#execute store result storage ctf:temp kit_editor.kit_num int 1 run scoreboard players get @s ctf_kit_editor_num