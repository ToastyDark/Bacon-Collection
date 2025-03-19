data modify storage projectileutils.temp compare_UUID set from storage projectileutils.temp UUID
execute store result storage minecraft:projectileutils.temp compared_result byte 1 run data modify storage minecraft:projectileutils.temp compare_UUID set from entity @s UUID
execute if data storage projectileutils.temp {compared_result:0b} run say hi