scoreboard players set $ctf_lobby_timer_paused value 1

# Msg
scoreboard players set @s actionbar_cd 1
title @s actionbar {"text":"Timer Paused","bold": true, "color": "gold"}

# Start Removing
schedule function ctf:lobby/timer/remove 1s replace