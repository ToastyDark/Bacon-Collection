execute if entity @s[scores={ctf_create_step_cd=1..}] run scoreboard players add @s ctf_create_step_cd 1
execute if entity @s[scores={ctf_create_step_cd=6..}] run scoreboard players reset @s ctf_create_step_cd

# Check for completed steps
$execute unless entity @s[scores={ctf_create_step_cd=1..}] run function ctf:create/check_completed {"temp_player":"$(temp_player)"}