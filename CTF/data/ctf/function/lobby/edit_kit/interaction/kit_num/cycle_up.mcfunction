scoreboard players add @s ctf_kit_editor_num 1
title @s actionbar ["",{"text":"Kit Num: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ctf_kit_editor_num"},"color":"gold"}]
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1 0.1

execute store result storage ctf:temp kit_editor.kit_index int 1 run scoreboard players get @s ctf_kit_editor_num
function ctf:lobby/edit_kit/interaction/kit_num/display_kit_name with storage ctf:temp kit_editor