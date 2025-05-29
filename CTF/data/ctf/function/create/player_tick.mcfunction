execute if entity @s[scores={ctf_create_click=1..}] run scoreboard players add @s ctf_create_click 1
execute if entity @s[scores={ctf_create_click=12..}] run scoreboard players reset @s ctf_create_click
execute if entity @s[scores={rclick=1..}] run scoreboard players add @s ctf_create_click 1

# Check for completed steps
$execute if entity @s[scores={ctf_create_click=1}] run function ctf:create/check_completed {"temp_player":"$(temp_player)"}