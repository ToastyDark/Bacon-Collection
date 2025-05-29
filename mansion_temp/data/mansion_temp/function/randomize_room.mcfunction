scoreboard objectives add mtemp dummy
execute store result score $random mtemp run random value 0..18

summon minecraft:marker ~ ~ ~ {Tags:[start_randroompos]}
summon minecraft:marker 15 75 133 {Tags:[room_selector]}
function mansion_temp:select_room

schedule function mansion_temp:set_room 5t append

kill @e[type=marker,tag=room_selector]

scoreboard objectives remove mtemp