execute store result score %random cf_data run random value 0..8
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 0 run setblock ~ ~ ~ minecraft:blue_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 1 run setblock ~ ~ ~ minecraft:red_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 2 run setblock ~ ~ ~ minecraft:orange_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 3 run setblock ~ ~ ~ minecraft:pink_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 4 run setblock ~ ~ ~ minecraft:purple_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 5 run setblock ~ ~ ~ minecraft:yellow_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 6 run setblock ~ ~ ~ minecraft:lime_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 7 run setblock ~ ~ ~ minecraft:white_wool
execute if block ~ ~ ~ minecraft:white_wool if score %random cf_data matches 8 run setblock ~ ~ ~ minecraft:black_wool