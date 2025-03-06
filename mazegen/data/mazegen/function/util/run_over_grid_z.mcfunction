# Recursive method for run_over_grid
$execute unless block ~ ~-1 ~ $(block) run return 0
$execute positioned ~ ~ ~$(size) run function mazegen:util/run_over_grid_z {size:"$(size)", function:"$(function)", block:"$(block)"}
$execute positioned ~ ~ ~ run function mazegen:util/run_over_grid_x {size:"$(size)", function:"$(function)", block:"$(block)"}