execute as @e[distance=..1,type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[distance=..1,type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
execute as @e[distance=..1,type=item,tag=!processed] run tag @s add processed