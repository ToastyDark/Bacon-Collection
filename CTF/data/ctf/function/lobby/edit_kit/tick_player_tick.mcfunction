# Check if player opens enderchest (specifically the Kit Editor Enderchest)
execute if entity @s[scores={ctf_lobby_echest_open=1..}] run function ctf:lobby/edit_kit/open_chest

# Previous Enderchest open check before adding extra checks
#execute if entity @s[scores={ctf_lobby_echest_open=1..}] run function ctf:lobby/edit_kit/open_chest