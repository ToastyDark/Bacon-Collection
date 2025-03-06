execute unless block ~ ~-1 ~ stripped_crimson_stem run return 0

$execute positioned ~ ~ ~$(size) run function mazegen:db/mark_db_recursive_z {size:"$(size)"}
$execute positioned ~$(size) ~ ~ run function mazegen:db/mark_db_recursive_x {size:"$(size)"}