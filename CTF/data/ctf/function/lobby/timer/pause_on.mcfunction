# Don't enable is game is playing
execute if data storage ctf:game {started:true} run return run function ctf:lobby/msg/game_already

# Pause
scoreboard players set $ctf_lobby_timer_paused value 1