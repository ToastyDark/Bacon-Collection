# Reset Has Died
scoreboard players reset @s ctf_died


# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail


# Start Respawn Timer
function ctf:player/respawn/timer/start