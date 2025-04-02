scoreboard players add @s actionbar_cd 1
title @s actionbar ["",{"text":"CTF Music: ","bold":true,"color":"dark_aqua"},{"text":"All On","bold":true,"color":"green"}]
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.7 0.1

# Toggle
scoreboard players set @s ctf_music 2
execute if entity @s[tag=ctf_player] run function ctf:game/music/start with storage ctf:game