scoreboard objectives add mazegen dummy
scoreboard players set $rotate mazegen 0

# Run at the northwest most tile's center.
# This will run 'generate_one_tile' over every individual tile.
function mazegen:util/run_over_grid {size:"7", function:"summon minecraft:marker ~ ~ ~ {Tags:[mazegen_outstanding_tile]}", block:"stripped_cherry_wood"}