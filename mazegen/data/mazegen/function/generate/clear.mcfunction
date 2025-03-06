# mostly copied from 'generate.mcfunction'

# Remove existing generating tiles
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] run kill @s

# Run at the northwest most tile's center.
# This will run 'generate_one_tile' over every individual tile.
function mazegen:util/run_over_grid {size:"7", function:"summon minecraft:marker ~ ~ ~ {Tags:[mazegen_outstanding_tile]}", block:"stripped_cherry_wood"}

# Avoid overwriting non-tiles
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] at @s unless block ~ ~ ~ stripped_mangrove_wood run particle minecraft:cherry_leaves ~ ~2 ~ 0 1 0 0 10
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] at @s unless block ~ ~ ~ stripped_mangrove_wood run kill @s

# Clear all tiles that *will* be overridden
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] at @s run fill ~-3 ~ ~-3 ~3 ~16 ~3 air

# Cancel generation
kill @e[type=minecraft:marker,tag=mazegen_outstanding_tile]