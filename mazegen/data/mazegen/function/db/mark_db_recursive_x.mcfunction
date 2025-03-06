execute unless block ~ ~-1 ~ stripped_crimson_stem run return 0

summon minecraft:marker ~ ~ ~ {Tags:["mazegen_db_marker"]}

$execute positioned ~$(size) ~ ~ run function mazegen:db/mark_db_recursive_x {size:"$(size)"}