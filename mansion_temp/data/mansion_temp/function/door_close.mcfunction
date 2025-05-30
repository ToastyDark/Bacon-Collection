setblock ~ ~ ~ barrier
setblock ~ ~1 ~ barrier
execute as @e[type=block_display,distance=..1] run data modify entity @s start_interpolation set value -1
execute as @e[type=block_display,tag=door_bottom,distance=..1] run data modify entity @s transformation.translation[1] set value 0f
execute as @e[type=block_display,tag=door_top,distance=..1] run data modify entity @s transformation.translation[1] set value 1f
playsound block.barrel.open master @a ~ ~ ~ 0.3