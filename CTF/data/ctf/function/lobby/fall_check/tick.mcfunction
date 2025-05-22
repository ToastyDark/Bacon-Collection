# Check if player is in lobby
execute unless entity @s[tag=ctf_lobby] run return fail

# If player below Y level, tp
execute if entity @s[scores={y=..25}] run function ctf:lobby/tp