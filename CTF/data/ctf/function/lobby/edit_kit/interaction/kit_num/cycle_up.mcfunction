scoreboard players add @s ctf_kit_editor_num 1
title @s actionbar ["",{"text":"Kit Num: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ctf_kit_editor_num"},"color":"gold"}]
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.8 1