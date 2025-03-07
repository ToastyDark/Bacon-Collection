# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail

# Check if player died with flag
execute if entity @s[tag=ctf_has_flag,team=ctf_team1] run function ctf:game/flag/return/start with storage ctf:game team1
execute if entity @s[tag=ctf_has_flag,team=ctf_team2] run function ctf:game/flag/return/start with storage ctf:game team2

# Respawn
function ctf:player/respawn/respawn



# Reset Has Died
scoreboard players reset @s ctf_died