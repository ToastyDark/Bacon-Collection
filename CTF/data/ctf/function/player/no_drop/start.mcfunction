# Stop if player is not in game
execute unless entity @s[tag=ctf_player] run return fail

# Process Dropped Items
execute as @e[distance=..3,type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[distance=..3,type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute as @e[distance=..3,type=item,tag=!processed] run tag @s add processed