# Stop if player already in queue
execute if entity @s[tag=ctf_queue] run return fail
execute if entity @s[tag=ctf_queue1] run return fail
execute if entity @s[tag=ctf_queue2] run return fail

tag @s remove ctf_queue2
tag @s remove ctf_queue

# Add Tag
tag @s add ctf_queue1


# Notif
#title @s actionbar ["",{"text":"Entered queue for ","bold": true,"color": "green"},{"text":"Team 1","bold":true,"color":"red"}]
title @s actionbar ["",{"text":"Team Selection: ","bold": true,"color": "gray"},{"text":"Red","bold":true,"color":"red"}]
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.1 1