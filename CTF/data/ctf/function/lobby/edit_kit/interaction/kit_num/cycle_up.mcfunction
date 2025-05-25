scoreboard players add @s ctf_kit_editor_num 1
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1 0.1

function ctf:lobby/edit_kit/interaction/kit_num/display_kit_name

# Restart Cycle if no more kits
function ctf:lobby/edit_kit/interaction/kit_num/end_of_list with storage ctf:temp kit_item