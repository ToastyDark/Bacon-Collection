tag @e[type=marker] remove mazegen_currently_picked
kill @e[type=marker,tag=mazegen_currently_generating_tile]
tag @e[type=marker,tag=mazegen_currently_generating_tile] remove mazegen_outstanding_tile
tag @e[type=marker] remove mazegen_currently_generating_tile
scoreboard players set $rotate mazegen 0

tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_available_to_pick