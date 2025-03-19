execute if entity @s[scores={ctf_crouch_time=30}] run title @s actionbar {"text": "Leaving queue in 3...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=30}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.6 0.2

execute if entity @s[scores={ctf_crouch_time=50}] run title @s actionbar {"text": "Leaving queue in 2...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=50}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.7 0.2

execute if entity @s[scores={ctf_crouch_time=70}] run title @s actionbar {"text": "Leaving queue in 1...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=70}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.8 0.2

# Leave Queue
execute if entity @s[scores={ctf_crouch_time=90}] run function ctf:lobby/queue/leave/leave