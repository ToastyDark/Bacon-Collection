scoreboard players reset @s ctf.map.desert_maze

# Stop if game is currently running
execute if data storage ctf:game {started:true} run return run function ctf:trigger/map/msg/game_in_session

# Stop if map is currently initalizing
execute if data storage ctf:temp {loading_map:active} run return run function ctf:trigger/map/msg/map_loading_error




# Set Map
data modify storage ctf:game map set value desert_maze

# Run on_selected functions
function ctf:trigger/map/_init_map with storage ctf:game



# Msg
title @s actionbar ["",{"text":"Map Changed: ","bold": true,"color": "gray"},{"text":"Desert Maze","bold": true,"color": "#eb8909"}]
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.6 1