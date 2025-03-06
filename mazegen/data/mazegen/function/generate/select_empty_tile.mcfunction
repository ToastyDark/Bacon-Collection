# Pick a random outstanding tile
tag @e[type=marker,tag=mazegen_outstanding_tile,sort=random,limit=1] add mazegen_currently_generating_tile

# Mark every currently known tile template as available
tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_available_to_pick
