# Stop if player already in queue
execute if entity @s[tag=ctf_queue] run return fail


tag @s remove ctf_queue2
tag @s remove ctf_queue1

# Add Tag
tag @s add ctf_queue


# Notif
function ctf:lobby/queue/random/msg
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1.3 0.5
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 1 0.2