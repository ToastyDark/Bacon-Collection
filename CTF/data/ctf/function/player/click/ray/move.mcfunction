# Move forward according to step size
tp @s ^ ^ ^0.5

# Check needed for collisions
execute if entity @e[distance=..1,type=armadillo,tag=ctf_bombsite] run tag @s add hitBomb

# Check for collisions with blocks
execute unless block ~ ~ ~ #ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until hit a block or marker
execute as @s[tag=!hitBomb,tag=!hitBlock,scores={steps=1..}] at @s run function ctf:player/click/ray/move
