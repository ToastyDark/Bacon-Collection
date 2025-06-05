# Math
execute store result score %temp temp run scoreboard players get @s ctf_respawn_cd
scoreboard players operation %temp temp /= $20 value

# Display
title @s actionbar ["",{"text":"Respawning in ","bold":true,"color":"gold"},{"score":{"name":"%temp","objective":"temp"},"bold":true,"color":"yellow"}]


# 3
#execute if entity @s[scores={ctf_respawn_cd=60}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"3","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=60}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.6 0.2
# 2
#execute if entity @s[scores={ctf_respawn_cd=40}w] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"2","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=40}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.7 0.2
# 1
#execute if entity @s[scores={ctf_respawn_cd=20}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"1","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=20}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.8 0.2