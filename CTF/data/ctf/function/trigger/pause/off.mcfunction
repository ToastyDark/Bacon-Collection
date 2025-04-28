scoreboard players set $ctf_lobby_timer_paused value 0

# Msg
scoreboard players set @s actionbar_cd 1
title @s actionbar {"text":"Timer Resumed","bold": true, "color": "green"}

# Start Removing
function ctf:lobby/timer/update
schedule function ctf:lobby/timer/remove 1s replace