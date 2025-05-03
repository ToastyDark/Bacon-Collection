# Initialize steps (moves every half a block)
scoreboard players set @s steps 12

# Move the ray
execute at @s run function ctf:player/click/ray/move

# Check if the ray found a bomb
execute as @s[tag=hitBomb] at @s run function ctf:game/_bomb/site/click/click

# Remove Ray
kill @s