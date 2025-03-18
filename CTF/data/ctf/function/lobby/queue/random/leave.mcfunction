# Remove Tag
tag @s remove ctf_queue

# Notif
title @s actionbar ["",{"text":"Left Queue for CTF","bold": true,"color": "red"}]
#execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 0.6 1
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1 1