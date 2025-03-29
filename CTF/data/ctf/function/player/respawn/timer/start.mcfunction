scoreboard players set @s ctf_respawn_cd 70

# Freeze
summon marker ~ ~1 ~ {Tags:["ctf_freeze","ctf_new_freeze"]}

# Set ID
execute as @e[distance=..2,type=marker,tag=ctf_new_freeze] run scoreboard players operation @s id = @p id
execute as @e[distance=..2,type=marker,tag=ctf_new_freeze] run tag @s remove ctf_new_freeze


# Player Stuff
clear @s

# Spectator
gamemode spectator