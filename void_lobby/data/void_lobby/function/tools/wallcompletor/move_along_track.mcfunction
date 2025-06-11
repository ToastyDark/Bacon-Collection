# /summon minecraft:marker 1050 115 56 {Tags:["wallcompletor"],data:{source:"test_wall_inner",path:"blue_wool"}}

setblock ~ ~ ~ minecraft:orange_concrete

$execute if block ~1 ~ ~ $(path) run tp @s ~1 ~ ~
$execute if block ~-1 ~ ~ $(path) run tp @s ~-1 ~ ~
$execute if block ~ ~ ~1 $(path) run tp @s ~ ~ ~1
$execute if block ~ ~ ~-1 $(path) run tp @s ~ ~ ~-1

$execute if block ~1 ~ ~1 $(path) run tp @s ~1 ~ ~1
$execute if block ~-1 ~ ~-1 $(path) run tp @s ~-1 ~ ~-1
$execute if block ~-1 ~ ~1 $(path) run tp @s ~-1 ~ ~1
$execute if block ~1 ~ ~-1 $(path) run tp @s ~1 ~ ~-1