# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail


# Respawn
function ctf:player/respawn/respawn



# Reset Has Died
scoreboard players reset @s ctf_died