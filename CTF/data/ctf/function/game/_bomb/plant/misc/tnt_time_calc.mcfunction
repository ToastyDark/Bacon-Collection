# Get bomb time to explode in 
execute store result score $bomb_time_to_explode_tick temp run data get entity @s data.time_to_explode 1

#Calculate and store result
scoreboard players operation $bomb_time_to_explode_tick temp *= $20 value
execute store result storage ctf:temp bomb_time_to_explode_tick int 1 run scoreboard players get $bomb_time_to_explode_tick temp

# Spawn TNT
function ctf:game/_bomb/plant/misc/spawn_tnt with storage ctf:temp