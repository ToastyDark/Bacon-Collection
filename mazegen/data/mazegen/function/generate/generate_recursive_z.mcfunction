execute unless block ~ ~-1 ~ stripped_cherry_wood run return 0

$execute positioned ~ ~ ~$(size) run function mazegen:generate/generate_recursive_z {size:"$(size)"}
$execute positioned ~ ~ ~ run function mazegen:generate/generate_recursive_x {size:"$(size)"}