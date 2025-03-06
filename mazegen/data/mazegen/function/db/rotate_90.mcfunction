# Put the currently held temporary tile here, move forward one tile
execute in minecraft:void execute at @e[type=minecraft:marker,tag=mazegen_current_rotation_pos, limit=1] run clone -405 80 -107 -411 96 -113 ~-3 ~ ~-3
execute in minecraft:void execute as @e[tag=mazegen_current_rotation_pos] at @s run tp @e[tag=mazegen_current_rotation_pos] ~ ~ ~7


# Pick a random tile, copy it to temp area, rotate it 90 degrees

# Pick a random tile using 'mazegen_needs_90_rot' (selected for hereafter using 'mazegen_currently_picked_rot')
execute in minecraft:void execute as @e[type=marker,tag=mazegen_needs_90_rot,sort=random,limit=1] run tag @s add mazegen_currently_picked_rot

# Clone that tile to the temporary location, "-411 80 -113".
execute in minecraft:void execute as @e[type=marker,tag=mazegen_currently_picked_rot,limit=1] at @s run clone ~-3 ~ ~-3 ~3 ~16 ~3 -411 80 -113

# Save
execute in minecraft:void setblock -411 78 -113 redstone_block
execute in minecraft:void setblock -411 78 -113 air

# Rotate
execute in minecraft:void setblock -410 78 -113 redstone_block
execute in minecraft:void setblock -410 78 -113 air

# Schedule
schedule function mazegen:db/rotate_90 1t