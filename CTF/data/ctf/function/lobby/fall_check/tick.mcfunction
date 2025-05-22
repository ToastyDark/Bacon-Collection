# Check if player is in lobby
execute unless entity @s[tag=ctf_lobby] run return fail

# If player below Y level, tp
execute unless entity @s[scores={y=..55}] run return fail

# Tag player so sound doesn't play
tag @s add ctf_lobby_save
gamemode spectator @s

# TP
function ctf:lobby/tp