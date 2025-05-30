setblock ~ ~ ~ air
setblock ~ ~1 ~ air
execute as @e[type=block_display,distance=..1] run data modify entity @s start_interpolation set value -1
execute as @e[type=block_display,distance=..1] run data modify entity @s transformation.translation[1] set value -1f
playsound block.barrel.open master @a ~ ~ ~ 0.3
tag @s add open