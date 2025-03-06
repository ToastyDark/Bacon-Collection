# this runs once per tile in the final map

# Mark every currently known tile as available
tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_available_to_pick

# Actually generate the tile (recursive, so separate)
function mazegen:generate/find_match