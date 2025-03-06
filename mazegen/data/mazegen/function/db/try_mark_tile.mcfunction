# Make sure the tile's connections aren't air'

# TODO: Make it so that it's not hardcoded to 7 by 7 tiles
execute if block ~ ~ ~4 air run return 0
execute if block ~ ~ ~-4 air run return 0
execute if block ~4 ~ ~ air run return 0
execute if block ~-4 ~ ~ air run return 0

# Mark the tile
summon minecraft:marker ~ ~ ~ {Tags:[mazegen_db_marker]}