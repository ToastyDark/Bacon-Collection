# Reset Score
scoreboard players reset @s ctf_mined_wool_any

# Stop if player is not in game
execute if entity @s[tag=!ctf_player] run return fail


# Steal Flag
execute if entity @s[team=ctf_team1] run function ctf:game/flag/team2/stolen
execute if entity @s[team=ctf_team2] run function ctf:game/flag/team1/stolen