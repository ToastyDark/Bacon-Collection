# Reset Score
scoreboard players reset @s ctf_leave_game

# Check if player was in game
execute if entity @s[tag=ctf_player] run return run function ctf:player/join/check_session

# Otherwise, leave queue
function ctf:lobby/queue/leave/leave
