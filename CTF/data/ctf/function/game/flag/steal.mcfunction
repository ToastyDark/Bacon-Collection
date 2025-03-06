# Reset Score
scoreboard players reset @s ctf_mined_wool_any

# Stop if player is not in game
execute if entity @s[tag=!ctf_player] run return fail


# Set Player as Flag Stolen



# If Team 1 steals flag
execute if entity @s[team=ctf_team1] run data modify storage ctf:game temp.team_raid set value 1
execute if entity @s[team=ctf_team1] run data modify storage ctf:game temp.team_chase set value 2

# If Team 2 steals flag
execute if entity @s[team=ctf_team2] run data modify storage ctf:game temp.team_raid set value 2
execute if entity @s[team=ctf_team2] run data modify storage ctf:game temp.team_chase set value 1

# Stolen Commands
function ctf:game/flag/stolen with storage ctf:game temp