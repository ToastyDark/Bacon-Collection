scoreboard objectives add mtemp dummy
execute store result score $random mtemp run random value 0..18

summon minecraft:marker ~ ~ ~ {Tags:[start_randroompos]}
summon minecraft:marker 15 75 133 {Tags:[room_selector]}
function mansion:infinite_halls/select_room

execute at @e[type=marker,tag=start_randroompos] run clone 15 75 133 22 81 143 ~ ~ ~
kill @e[type=marker,tag=start_randroompos]

kill @e[type=marker,tag=room_selector]

scoreboard objectives remove mtemp