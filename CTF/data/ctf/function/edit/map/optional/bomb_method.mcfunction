# Command Format
# function ctf:edit/map/optional/bomb_method { "map_id": "<map_id>" , "bomb_method": <value> }

# Set map's bomb method
$data modify storage ctf:map $(map_id).bomb_method set value $(bomb_method)

# Message
$title @s actionbar ["",{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"},{"text":" will now use the ","bold":true,"color":"green"},{"nbt":"$(map).bomb_method","storage":"ctf:map","bold":true,"color":"gold"},{"text":" bomb method","bold":true,"color":"gold"}]