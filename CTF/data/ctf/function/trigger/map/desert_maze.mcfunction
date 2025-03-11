scoreboard players reset @s ctf.map.desert_maze

# Set Map
data modify storage ctf:game map set value desert_maze

title @s actionbar ["",{"text":"Map Changed: ","bold": true,"color": "gray"},{"text":"Desert Maze","bold": true,"color": "#eb8909"}]
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.6 1