# Remove 1
scoreboard players remove @s ctf_respawn_cd 1

# Display
execute if entity @s[scores={ctf_respawn_cd=60}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"3","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=40}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"2","color":"yellow","bold":true}]
execute if entity @s[scores={ctf_respawn_cd=20}] run title @s actionbar ["",{"text":"Respawn in ","color":"gold","bold":true},{"text":"1","color":"yellow","bold":true}]



# Respawn on 0
execute if entity @s[scores={ctf_respawn_cd=0}] run function ctf:player/respawn/timer/done