scoreboard objectives add mazegen dummy
scoreboard players set $rotate mazegen 0

# Remove existing generating tiles
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] run kill @s

# Run at the northwest most tile's center.
# This will run 'generate_one_tile' over every individual tile.
function mazegen:util/run_over_grid {size:"7", function:"summon minecraft:marker ~ ~ ~ {Tags:[mazegen_outstanding_tile]}", block:"stripped_cherry_wood"}

# Avoid overwriting existing blocks
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] at @s unless block ~ ~ ~ air run particle minecraft:cherry_leaves ~ ~2 ~ 0 1 0 0 10
execute as @e[type=minecraft:marker,tag=mazegen_outstanding_tile] at @s unless block ~ ~ ~ air run kill @s

scoreboard players set $generating mazegen 1

scoreboard players reset $total_tiles mazegen
execute as @e[tag=mazegen_outstanding_tile] run scoreboard players add $total_tiles mazegen 1