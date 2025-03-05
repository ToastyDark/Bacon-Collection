# Stop if player already in queue
execute unless entity @s[tag=ctf_queue] run return fail

# Remove Tag
tag @s remove ctf_queue

# Notif
title @s actionbar ["",{"text":"Left queue for ","bold": true,"color": "green"},{"text":"CTF","bold":true,"color":"gold"}]
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 0.8 1 1