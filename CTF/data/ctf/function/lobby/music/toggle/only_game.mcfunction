scoreboard players add @s actionbar_cd 1
title @s actionbar ["",{"text":"CTF Music: ","bold":true,"color":"dark_aqua"},{"text":"Only Game","bold":true,"color":"gold"}]
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.6 0.1

# Toggle
scoreboard players set @s ctf_music 1
execute if entity @s[tag=ctf_lobby] run function museq:meta/stopall