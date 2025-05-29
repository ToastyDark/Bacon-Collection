execute as @e[type=minecraft:marker,tag=room_selector] at @s run tp ~ ~-7 ~
execute at @e[type=minecraft:marker,tag=room_selector] run clone ~ ~ ~ ~7 ~6 ~10 15 75 133

scoreboard players remove $random mtemp 1

execute if score $random mtemp matches 1.. run function mansion_temp:select_room