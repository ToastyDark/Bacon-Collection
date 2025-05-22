# Check if player is in lobby
execute unless entity @s[tag=ctf_lobby] run return fail

# If player below Y level, tp