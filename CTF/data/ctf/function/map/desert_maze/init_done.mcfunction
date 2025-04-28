# List of checks to see if a map is done initializing
# If all return true, sets status of loading_map to done
# Checks are map specific

# Check if maze is done generating
execute unless score $generating mazegen matches 1 run return fail



# All checks succeded, so initalizing process is done
data modify storage ctf:temp loading_map set value done