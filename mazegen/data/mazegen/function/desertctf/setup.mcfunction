# Example of what needs to be done to generate the maze.

# *make sure "/function mazegen:generate/tick_generate" is ran somewhere and being ticked.

# good debug stuff too mighe be:
# /execute as @e[type=minecraft:marker,tag=mazegen_available_to_pick] at @s run particle minecraft:happy_villager ~ ~2 ~
# /execute as @e[type=minecraft:marker] at @s run particle minecraft:angry_villager ~ ~ ~


# Clear all marked pickable tile templates
kill @e[type=minecraft:marker,tag=mazegen_db_marker]

# Mark all of the tile templates we use so they're used during generation
execute positioned -448 80 -252 run function mazegen:db/mark_db

# Clear the area
fill -353 70 -134 -305 64 -217 air

# Run generation
execute positioned -350 64 -214 run function mazegen:generate/generate