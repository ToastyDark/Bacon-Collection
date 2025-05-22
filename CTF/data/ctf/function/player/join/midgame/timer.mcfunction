scoreboard players add @s ctf_join_time 1

# Join Game
$execute if entity @s[scores={ctf_join_time=45..}] run function ctf:player/join/midgame/start with storage ctf:game team$(team_num)

# Actionbar
execute if entity @s[scores={ctf_join_time=5}] run title @s actionbar ["",{"text":"Joining Team: ","bold":true,"color":"#DA9201"},{"text":"2s","bold":true,"color":"#FBAC0E"}]
execute if entity @s[scores={ctf_join_time=25}] run title @s actionbar ["",{"text":"Joining Team: ","bold":true,"color":"#DA9201"},{"text":"1s","bold":true,"color":"#FBAC0E"}]


# Sounds
execute if score @s ctf_join_time matches 5 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.6 1
execute if score @s ctf_join_time matches 13 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.7 1
execute if score @s ctf_join_time matches 21 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.8 1
execute if score @s ctf_join_time matches 29 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.9 1
execute if score @s ctf_join_time matches 37 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1 1
execute if score @s ctf_join_time matches 42 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.1 1