scoreboard players set @s ctf_respawn_cd 70

# Freeze
summon area_effect_cloud ~ ~2.5 ~ {Duration:200,Tags:["ctf_freeze","ctf_new_freeze"]}
execute as @e[distance=..2,type=area_effect_cloud,tag=ctf_new_freeze] run rotate @s ~ 30

# Set ID
execute as @e[distance=..2,type=area_effect_cloud,tag=ctf_new_freeze] run scoreboard players operation @s id = @p id
execute as @e[distance=..2,type=area_effect_cloud,tag=ctf_new_freeze] run tag @s remove ctf_new_freeze


# Player Stuff
clear @s

# Spectator
rotate @s ~ 30
gamemode spectator
spectate @n[distance=..2,type=area_effect_cloud,tag=ctf_freeze] @s