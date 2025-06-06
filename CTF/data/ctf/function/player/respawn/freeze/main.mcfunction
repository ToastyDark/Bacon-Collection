# Freeze player first
execute if entity @s[scores={ctf_respawn_freeze_cd=1}] run attribute @s minecraft:movement_speed modifier add ctf_respawn_cd_mve -1 add_multiplied_total
execute if entity @s[scores={ctf_respawn_freeze_cd=1}] run attribute @s minecraft:jump_strength modifier add ctf_respawn_cd_jmp -1 add_multiplied_total

# Add to timer
scoreboard players add @s ctf_respawn_freeze_cd 1

# Stop and remove freeze
execute if entity @s[scores={ctf_respawn_freeze_cd=20..}] run attribute @s minecraft:movement_speed modifier remove ctf_respawn_cd_mve
execute if entity @s[scores={ctf_respawn_freeze_cd=20..}] run attribute @s minecraft:jump_strength modifier remove ctf_respawn_cd_jmp
execute if entity @s[scores={ctf_respawn_freeze_cd=20..}] run scoreboard players reset @s ctf_respawn_freeze_cd