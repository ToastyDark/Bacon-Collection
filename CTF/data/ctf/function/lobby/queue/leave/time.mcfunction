execute if entity @s[scores={ctf_crouch_time=5}] run title @s actionbar ["",{"text":"Leaving Queue in: ","bold":true,"color":"#DA9201"},{"text":"3s","bold":true,"color":"#FBAC0E"}]
execute if entity @s[scores={ctf_crouch_time=5}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.6 0.2

execute if entity @s[scores={ctf_crouch_time=25}] run title @s actionbar ["",{"text":"Leaving Queue in: ","bold":true,"color":"#DA9201"},{"text":"2s","bold":true,"color":"#FBAC0E"}]
execute if entity @s[scores={ctf_crouch_time=25}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.7 0.2

execute if entity @s[scores={ctf_crouch_time=45}] run title @s actionbar ["",{"text":"Leaving Queue in: ","bold":true,"color":"#DA9201"},{"text":"1s","bold":true,"color":"#FBAC0E"}]
execute if entity @s[scores={ctf_crouch_time=45}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.8 0.2

# Leave Queue
execute if entity @s[scores={ctf_crouch_time=65}] run function ctf:lobby/queue/leave/leave