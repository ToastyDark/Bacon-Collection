execute if entity @s[scores={ctf_crouch_time=20}] run title @s actionbar {"text": "Leaving queue in 3...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=20}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.6 0.2

execute if entity @s[scores={ctf_crouch_time=40}] run title @s actionbar {"text": "Leaving queue in 2...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=40}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.7 0.2

execute if entity @s[scores={ctf_crouch_time=60}] run title @s actionbar {"text": "Leaving queue in 1...","bold": true,"color": "gold"}
execute if entity @s[scores={ctf_crouch_time=60}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.8 0.2

# Leave Queue
execute if entity @s[scores={ctf_crouch_time=80}] run function ctf:lobby/queue/leave/leave