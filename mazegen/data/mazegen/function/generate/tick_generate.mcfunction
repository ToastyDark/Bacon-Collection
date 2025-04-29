# If there aren't any markers tagged with 'outstanding_tile', return.
execute unless entity @e[type=marker, tag=mazegen_outstanding_tile] run return 0


# Each marker tagged with 'outstanding_tile' is a tile that needs to be generated.
# If none of these are currently being generated, pick one at random, and add the available tile templates to be picked.
execute unless entity @e[type=marker, tag=mazegen_currently_generating_tile] run function mazegen:generate/select_empty_tile

# If no tile template has been picked (mazegen_available_to_pick), pick one.
execute unless entity @e[type=marker, tag=mazegen_currently_picked] run function mazegen:generate/pick_tile_template

execute unless entity @e[type=marker, tag=mazegen_available_to_pick] at @e[type=marker, tag=mazegen_currently_generating_tile] run particle minecraft:block_marker{block_state:"barrier"} ~ ~10 ~

# Clone from the temporary location, "-411 80 -113", to the current execution position
execute at @e[type=marker, tag=mazegen_currently_generating_tile] run clone -405 80 -107 -411 96 -113 ~-3 ~ ~-3

# If the tile matches the surroundings of the temp position, return 1, and make this tile no longer outstanding.
execute at @e[type=marker, tag=mazegen_currently_generating_tile] if function mazegen:generate/check_match run function mazegen:generate/next_tile
execute at @e[type=marker, tag=mazegen_currently_generating_tile] if function mazegen:generate/check_match run return 1

# Rotate the tile. This is done until $rotate hits four, so it does a full "circle".

# Save temporary tile
setblock -411 78 -113 redstone_block
setblock -411 78 -113 air

# Rotate 90. If the tile matches the surroundings of the temp position, return 1.
setblock -410 78 -113 redstone_block
setblock -410 78 -113 air

scoreboard players add $rotate mazegen 1

# Did the full circle + mirrors, try another tile
execute if score $rotate mazegen matches 8.. run function mazegen:generate/finish_rotating

# Mirror
execute if score $rotate mazegen matches 4 run setblock -405 78 -113 redstone_block
execute if score $rotate mazegen matches 4 run setblock -405 78 -113 air

# Debug
execute at @e[type=marker, tag=mazegen_currently_generating_tile] run particle minecraft:flame ~ ~6 ~ 0 10 0 0 20

# Update progress
scoreboard players reset $current_tiles mazegen
tick rate 1

# count current tile amount
execute as @e[tag=mazegen_outstanding_tile] run scoreboard players add $current_tiles mazegen 1

# complete tiles = total tiles - current tiles
scoreboard players operation $complete_tiles mazegen = $total_tiles mazegen
scoreboard players operation $complete_tiles mazegen -= $current_tiles mazegen

scoreboard players operation $complete_tiles mazegen *= $one_hundred mazegen

# completion percent = complete tiles / total tiles
scoreboard players operation $completion_percent mazegen = $complete_tiles mazegen
scoreboard players operation $completion_percent mazegen /= $total_tiles mazegen

scoreboard players operation $progress api.mazegen = $completion_percent mazegen