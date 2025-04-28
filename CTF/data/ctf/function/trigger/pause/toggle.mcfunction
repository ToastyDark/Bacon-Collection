scoreboard players reset @s ctf.pause

# Stop if map is currently being loaded and game is about to start
#scoreboard players set @s actionbar_cd 1
execute if data storage ctf:temp {loading_map:active} run return run title @s actionbar {"text":"Cannot toggle timer while map is loading","bold": true,"color": "red"}


# Unpause
execute if score $ctf_lobby_timer_paused value matches 1 run return run function ctf:trigger/pause/off

# Pause
function ctf:trigger/pause/on