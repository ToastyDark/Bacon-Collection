scoreboard players reset @s ctf.map.sandcastle

gamerule sendCommandFeedback false

# Set Map
data modify storage ctf:game map set value sandcastle

title @s actionbar ["",{"text":"Map Changed: ","bold": true,"color": "gray"},{"text":"Sandcastle","bold": true,"color": "#eb8909"}]
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.6 1


#gamerule sendCommandFeedback true