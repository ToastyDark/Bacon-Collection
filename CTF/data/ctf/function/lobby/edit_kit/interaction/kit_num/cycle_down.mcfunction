# Stop if kit_num is about to be 0
execute if entity @s[scores={ctf_kit_editor_num=1}] run return run execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.6 0.1


# Remove 1
scoreboard players remove @s ctf_kit_editor_num 1
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.9 0.1

function ctf:lobby/edit_kit/interaction/kit_num/display_kit_name