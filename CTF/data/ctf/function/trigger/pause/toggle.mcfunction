scoreboard players reset @s ctf.pause

# Toggle Off
execute if score $ctf_lobby_timer_enabled value matches 1 run return run function ctf:trigger/pause/off

# Toggle On
function ctf:trigger/pause/on