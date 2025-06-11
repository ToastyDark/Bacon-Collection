# /summon minecraft:marker 1050 115 56 {Tags:["wallcompletor"],data:{source:"test_wall_inner",path:"blue_wool"}}

# Move
setblock ~ ~ ~ minecraft:orange_concrete
$execute if block ~1 ~ ~ $(path) run tp @s ~1 ~ ~
$execute if block ~-1 ~ ~ $(path) run tp @s ~-1 ~ ~
$execute if block ~ ~ ~1 $(path) run tp @s ~ ~ ~1
$execute if block ~ ~ ~-1 $(path) run tp @s ~ ~ ~-1

$execute if block ~1 ~ ~1 $(path) run tp @s ~1 ~ ~1
$execute if block ~-1 ~ ~-1 $(path) run tp @s ~-1 ~ ~-1
$execute if block ~-1 ~ ~1 $(path) run tp @s ~-1 ~ ~1
$execute if block ~1 ~ ~-1 $(path) run tp @s ~1 ~ ~-1

# Prepare to clone from template wall
$data modify storage void_lobby:wallcompletor_temp x set from storage void_lobby:wallcompletor sources.$(source).x
$data modify storage void_lobby:wallcompletor_temp y set from storage void_lobby:wallcompletor sources.$(source).y
$data modify storage void_lobby:wallcompletor_temp z set from storage void_lobby:wallcompletor sources.$(source).z

scoreboard players add @s wallcompletor.self 1
execute store result storage void_lobby:wallcompletor_temp offset int 1 run scoreboard players get @s wallcompletor.self

# Clone
function void_lobby:tools/wallcompletor/place_wall_section with storage void_lobby:wallcompletor_temp