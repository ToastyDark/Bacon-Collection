# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail

# Check if player died with flag
execute if entity @s[tag=ctf_has_flag] run function ctf:game/flag/return/start with storage ctf:game temp

# Respawn
function ctf:player/respawn/respawn



# Reset Has Died
scoreboard players reset @s ctf_died