# Reset Has Died
scoreboard players reset @s ctf_died

# Reset Player
function ctf:player/respawn/reset

# Reset Player Items
function ctf:item/reset_items


# Check if player is in game
execute unless entity @s[tag=ctf_player] run return fail


# Start Respawn Timer
execute at @s run function ctf:player/respawn/timer/start