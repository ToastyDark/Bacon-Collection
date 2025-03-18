# Remove Tag
tag @s remove ctf_queue1

# Notif
title @s actionbar ["",{"text":"Left Queue for CTF","bold": true,"color": "red"}]
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 0.6 1