scoreboard players add @s actionbar_cd 1
title @s actionbar ["",{"text":"CTF Music: ","bold":true,"color":"dark_aqua"},{"text":"Off","bold":true,"color":"red"}]
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.4 0.1

# Toggle
scoreboard players set @s ctf_music 0
function museq:meta/stopall