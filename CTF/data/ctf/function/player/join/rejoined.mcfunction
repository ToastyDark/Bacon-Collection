# Reset Score
scoreboard players reset @s ctf_leave_game

# Check if player was in game
execute unless entity @s[tag=ctf_player] run return fail

# Return if in game
execute if score @s ctf_session = $ctf_session value run return run function ctf:player/respawn/start

# Else, Kick
function ctf:player/leave/leave