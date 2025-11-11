# Move forward according to step size
tp @s ^ ^ ^0.5

# For testing
particle flame ~ ~ ~ 0 0 0 0 1 force

# Check if hit correct block
execute if block ~ ~ ~ #ctf_flag_claw run tag @s add hitClawBlock

# Check for collisions with blocks
execute unless block ~ ~ ~ #ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until hit a block or marker
execute as @s[tag=!hitClawBlock,tag=!hitBlock,scores={steps=1..}] at @s run function ctf:player/click/ray/move
