execute store result storage minecraft:projectileutils.temp compared_result byte 1 run data modify storage minecraft:projectileutils.temp compare_UUID set from entity @s UUID
execute unless data storage projectileutils.temp {compared_result:0b} run say hi