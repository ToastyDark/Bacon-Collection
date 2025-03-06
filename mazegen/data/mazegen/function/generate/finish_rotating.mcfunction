# Remove the tile from the pool of tiles available to pick, and remove the 'mazegen_currently_picked' tag we added
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run tag @s remove mazegen_available_to_pick
execute as @e[type=marker,tag=mazegen_currently_picked,limit=1] at @s run tag @s remove mazegen_currently_picked
scoreboard players set $rotate mazegen 0