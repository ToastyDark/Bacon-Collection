execute unless block ~ ~-1 ~ stripped_cherry_wood run return 0

summon minecraft:armadillo ~ ~ ~

$execute positioned ~$(size) ~ ~ run function mazegen:generate/generate_recursive_x {size:"$(size)"}