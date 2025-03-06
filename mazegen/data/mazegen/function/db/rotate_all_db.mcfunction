tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_needs_90_rot
tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_needs_180_rot
tag @e[type=minecraft:marker,tag=mazegen_db_marker] add mazegen_needs_270_rot

summon marker -448 48 -217 {Tags:["mazegen_current_rotation_pos"]}
execute positioned -448 48 -217 run function mazegen:db/rotate_90