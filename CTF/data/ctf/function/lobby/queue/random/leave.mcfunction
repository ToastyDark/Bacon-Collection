# Remove Tag
tag @s remove ctf_queue

# Notif
title @s actionbar ["",{"text":"Left CTF Queue","bold": true,"color": "red"}]
#execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 0.6 1
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1 0.4
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.8 0.3