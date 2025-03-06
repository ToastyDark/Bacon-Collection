# Recursive method for run_over_grid
$execute unless block ~ ~-1 ~ $(block) run return 0
$execute run $(function)
$execute positioned ~$(size) ~ ~ run function mazegen:util/run_over_grid_x {size:"$(size)", function:"$(function)", block:"$(block)"}