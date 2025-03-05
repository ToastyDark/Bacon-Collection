# Stop if player already in queue
execute if entity @s[tag=ctf_queue] run return fail

# Add Tag
tag @s add ctf_queue


# Notif
title @s actionbar ["",{"text":"Entered queue for ","bold": true,"color": "green"},{"text":"CTF","bold":true,"color":"gold"}]
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.1 1