# Reset Score
scoreboard players reset @s ctf_mined_wool_any

# Stop if player is not in game
execute if entity @s[tag=!ctf_player] run return fail

# Check if player's own flag
execute if entity @s[team=ctf_team1] at @s run function ctf:game/flag/steal/team_check with storage ctf:game team1
execute if entity @s[team=ctf_team2] at @s run function ctf:game/flag/steal/team_check with storage ctf:game team2



# Set Player as Flag Stolen
function ctf:game/flag/player/set



# Set Temp Team Data
function ctf:game/flag/set_temp_team

# Stolen Commands
function ctf:game/flag/stolen with storage ctf:game temp