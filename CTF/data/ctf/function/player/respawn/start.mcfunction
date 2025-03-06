# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail

# Check if player died with flag
execute if entity @s[tag=ctf_has_flag] run function ctf:game/flag/return/start

# Reset Player
function ctf:player/respawn/reset


# Add Respawned Tag
function ctf:player/respawn/add_tag


# Get Kit
function ctf:player/kit/update with storage ctf:game



# Reset Has Died
scoreboard players reset @s ctf_died