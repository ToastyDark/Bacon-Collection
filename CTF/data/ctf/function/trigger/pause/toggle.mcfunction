scoreboard players reset @s ctf.pause

# Unpause
execute if score $ctf_lobby_timer_paused value matches 1 run return run function ctf:trigger/pause/off

# Pause
function ctf:trigger/pause/on