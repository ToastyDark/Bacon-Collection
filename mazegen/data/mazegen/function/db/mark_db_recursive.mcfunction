execute unless block ~ ~-1 ~ stripped_crimson_stem run return 0

summon armadillo ~ ~ ~
$execute positioned ~$(size) ~ ~ run function mazegen:db/mark_db_recursize {size:"$(size)"}