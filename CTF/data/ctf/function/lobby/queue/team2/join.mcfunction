# Stop if player already in queue
#execute if entity @s[tag=ctf_queue] run return fail
#execute if entity @s[tag=ctf_queue1] run return fail
execute if entity @s[tag=ctf_queue2] run return fail

tag @s remove ctf_queue1
tag @s remove ctf_queue

# Add Tag
tag @s add ctf_queue2


# Notif
#title @s actionbar ["",{"text":"Entered queue for ","bold": true,"color": "green"},{"text":"Team 2","bold":true,"color":"red"}]
function ctf:lobby/queue/team2/msg
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1.3 0.5
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 1 0.2
#execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.1 1