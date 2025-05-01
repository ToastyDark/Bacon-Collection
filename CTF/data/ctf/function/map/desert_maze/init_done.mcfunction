# List of checks to see if a map is done initializing
# If all return true, sets status of loading_map to done
# Checks are map specific

# Check if maze is done generating
execute unless score $progress api.mazegen matches 100 run return fail



# All checks succeded, so initalizing process is done
schedule function ctf:lobby/load_map/turn_on 2t replace

# ------ Remove Forceloads ------

# Tile Copies
execute in void run forceload remove -451 -255 -389 -193

# Rotating Force load
execute in void run forceload remove -411 -113 -405 -107


# Map
execute in void run forceload remove -358 -77 -300 -275