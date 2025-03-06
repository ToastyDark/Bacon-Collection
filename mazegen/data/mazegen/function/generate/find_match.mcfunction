
# Pick a random tile using 'mazegen_available_to_pick' (selected for hereafter using 'mazegen_currently_picked')
execute as @e[type=marker,tag=mazegen_available_to_pick,sort=random,limit=1] run tag @s add mazegen_currently_picked

# Clone that tile to the temporary location, "-411 80 -113".
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run clone ~-3 ~ ~-3 ~3 ~32 ~3 -411 80 -113

# Remove that tile from the pool of tiles available to pick, and remove the 'mazegen_currently_picked' tag we added
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run tag @s remove mazegen_available_to_pick
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run tag @s remove mazegen_currently_picked

# Clone from the temporary location, "-411 80 -113", to the current execution position
clone -405 80 -107 -411 112 -113 ~-3 ~ ~-3

# If the tile matches the surroundings of the temp position, return 1.
execute if function mazegen:generate/check_match run return 1

# Save temporary tile
setblock -411 78 -113 redstone_block
setblock -411 78 -113 air

# Rotate 90. If the tile matches the surroundings of the temp position, return 1.

execute if function mazegen:generate/check_match run return 1


# Rotate 180. If the tile matches the surroundings of the temp position, return 1.
execute if function mazegen:generate/check_match run return 1

# Rotate 270. If the tile matches the surroundings of the temp position, return 1.
execute if function mazegen:generate/check_match run return 1

# If we're here without returning, we didn't find a match.
# So, check if there are more available tiles to go through, and run this function again if so.
execute if entity @e[type=marker,tag=mazegen_available_to_pick] run function mazegen:generate/find_match

# No matches
return 0