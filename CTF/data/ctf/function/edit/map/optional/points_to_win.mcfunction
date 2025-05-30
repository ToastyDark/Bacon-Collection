# Command Format
# function ctf:edit/map/optional/points_to_win { "map_id": "<map_id>" , "points_to_win": <value> }

# Set map's points to win
$data modify storage ctf:map $(map_id).points_to_win set value $(points_to_win)

# Message
$title @s actionbar ["",{"text":"You now need ","bold":true,"color":"green"},{"nbt":"$(map).points_to_win","storage":"ctf:map","bold":true,"color":"gold"},{"text":" points to win on ","bold":true,"color":"green"},{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"}]