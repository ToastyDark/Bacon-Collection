# Stop if player already in queue
execute if entity @s[tag=ctf_queue] run return fail
execute if entity @s[tag=ctf_queue1] run return fail
execute if entity @s[tag=ctf_queue2] run return fail


tag @s remove ctf_queue2
tag @s remove ctf_queue1

# Add Tag
tag @s add ctf_queue


# Notif
#title @s actionbar ["",{"text":"Entered queue for ","bold": true,"color": "green"},{"text":"CTF","bold":true,"color":"gold"}]
title @s actionbar ["",{"text":"Team Selection: ","bold": true,"color": "gray"},{"text":"Random","bold":true,"color":"gold"}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1.3 0.5
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 1 0.2
#playsound block.note_block.harp master @s ~ ~ ~ 1 1.1 1