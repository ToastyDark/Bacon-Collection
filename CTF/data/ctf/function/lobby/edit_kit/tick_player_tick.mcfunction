# Check if player opens enderchest (specifically the Kit Editor Enderchest)
execute if entity @s[tag=ctf_lobby] if entity @s[scores={ctf_lobby_echest_open=1..}] run function ctf:lobby/edit_kit/open_chest

# Previous Enderchest open check before adding extra checks
#execute if entity @s[scores={ctf_lobby_echest_open=1..}] run function ctf:lobby/edit_kit/open_chest

# Check if player is still editing kits
function ctf:lobby/edit_kit/still_editing/get_id
execute if entity @s[tag=ctf_kit_still_editing] run function ctf:lobby/edit_kit/still_editing/check_stopped with storage ctf:temp kit_still_edting_data