scoreboard players reset @s ctf.map
scoreboard players reset @s ctf.maps


tellraw @s ["",{"text":"[CTF Map List]","bold":true,"color":"#FA8500"},{"text":"\n"},{"text":"Desert Maze","color":"#FDB21C","clickEvent":{"action":"run_command","value":"/trigger ctf.map.desert_maze"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Desert Maze","color":"gray"}]}},{"text":"\n"},{"text":"Sandcastle","color":"#FDB21C","clickEvent":{"action":"run_command","value":"/trigger ctf.map.sandcastle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set Sandcastle","color":"gray"}]}}]

# Start Building Message
#data modify storage ctf:temp map_list set value ""

# Map List
#data modify storage ctf:temp map_list  value {"text":"[CTF Map List]","bold":true,"color":"#FA8500"}