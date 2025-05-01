# List of checks to see if a map is done initializing
# If all return true, sets status of loading_map to done
# Checks are map specific

# Check if maze is done generating
execute unless score $progress api.mazegen matches 100 run return fail



# All checks succeded, so initalizing process is done
data modify storage ctf:temp loading_map set value done

# Remove Forceloads
execute in void run forceload remove -358 -77 -300 -275