# Remove 1
scoreboard players remove @s ctf_respawn_cd 1

# TP to Armor Stand
execute at @s as @e[type=armor_stand,tag=ctf_new_freeze] if score @s id = @p id run function ctf:player/respawn/timer/freeze_tp



# Display
# 3
execute if entity @s[scores={ctf_respawn_cd=60}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"3","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=60}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.6 0.2
# 2
execute if entity @s[scores={ctf_respawn_cd=40}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"2","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=40}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.7 0.2
# 1
execute if entity @s[scores={ctf_respawn_cd=20}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"1","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=20}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.2 0.8 0.2




# Respawn on 0
execute if entity @s[scores={ctf_respawn_cd=0}] run function ctf:player/respawn/timer/done