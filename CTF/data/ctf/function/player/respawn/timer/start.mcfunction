scoreboard players set @s ctf_respawn_cd 70

# Freeze
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["ctf_new_freeze"]}

# Set ID
execute at @s as @e[distance=..2,type=armor_stand,tag=ctf_new_freeze] run scoreboard players operation @s id = @p id
execute at @s as @e[distance=..2,type=armor_stand,tag=ctf_new_freeze] run tag @s remove ctf_new_freeze
