# Start the process of reseting the map to playable state

# Forceload chunks to start maze gen
execute in void run forceload add -358 -77 -300 -275


# Begin generating the maze
# -jake
#schedule function mazegen:mazectf/start_maze_ctf 1t replace
# Set api progress to 0 first
scoreboard players set $progress api.mazegen 0
data modify storage ctftemp loading_map_done set value false
function mazegen:mazectf/start_maze_ctf