# Check if player opens enderchest
execute if entity @s[scores={ctf_lobby_echest_open=1..}] run function ctf:lobby/edit_kit/start/load_kit