# Get time to respawn
#scoreboard players set @s ctf_respawn_cd 70
execute store result score @s ctf_respawn_cd run data get storage ctf:game player_respawn_time
scoreboard players set $20 value 20
scoreboard players operation @s ctf_respawn_cd *= $20 value

# If 20.. show respawn countdown message, then Reset Player Display Timer
scoreboard players reset @s ctf_respawn_cd_display


# ------------------------------------------------
# Spectator Mode
gamemode spectator


# Door Death
execute if data storage ctf:game {map:sandcastle} run function ctf:map/sandcastle/door_death/tp



# Freeze
execute at @s run summon area_effect_cloud ~ ~1.6 ~ {Duration:200,Tags:["ctf_freeze","ctf_new_freeze"]}
execute as @n[distance=..5,type=area_effect_cloud,tag=ctf_new_freeze] run rotate @s ~ 30

# Set ID
execute as @n[distance=..5,type=area_effect_cloud,tag=ctf_new_freeze] run scoreboard players operation @s id = @p id
execute as @n[distance=..5,type=area_effect_cloud,tag=ctf_new_freeze] run tag @s remove ctf_new_freeze


# Player Stuff
clear @s

# Spectate Freeze
spectate @n[distance=..5,type=area_effect_cloud,tag=ctf_freeze] @s