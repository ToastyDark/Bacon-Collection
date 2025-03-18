# Remove Tag
tag @s remove ctf_queue1

# Notif
title @s actionbar ["",{"text":"Left Queue for CTF","bold": true,"color": "red"}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1 0.4
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.8 1
#execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 0.6 1