# Stop if player is not in CTF
execute if entity @s[tag=!ctf_player] run return fail

# Add Score
scoreboard players add @s ctf_round_kills_ranged 1

# Check if player had flag