# Start the process of reseting the map to playable state

# Tile Copies
execute in void run forceload add -451 -255 -389 -193

# Rotating Force load
execute in void run forceload add -411 -113 -405 -107


# Forceload chunks to start maze gen
execute in void run forceload add -358 -77 -300 -275




# Begin generating the maze
# -jake
# Set api progress to 0 first
scoreboard players set $progress api.mazegen 0
data modify storage ctf:temp loading_map_done set value false
data modify storage ctf:temp loading_map set value active
schedule function mazegen:mazectf/start_maze_ctf 3t replace
#function mazegen:mazectf/start_maze_ctf