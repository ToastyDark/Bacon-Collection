# Starting at a given position, using a given tile size, mark each tile with a marker so it can be used during generation.

summon minecraft:marker ~ ~ ~ {Tags:["mazegen_db_finder"]}

$execute positioned ~$(size) ~ ~ run function mazegen:db/mark_db_recursive_x {size:"$(size)"}