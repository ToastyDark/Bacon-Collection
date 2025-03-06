scoreboard players reset @s ctf_died

# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail


# Get Kit
function ctf:player/kit/update with storage ctf:game