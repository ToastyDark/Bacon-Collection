# Command Format
# function ctf:edit/map/optional/bomb_time_to_explode { "map_id": "<map_id>" , "bomb_time_to_explode": <value> }

# Set map's flag respawn delay
$data modify storage ctf:map $(map_id).bomb_time_to_explode set value $(bomb_time_to_explode)

# Message
$title @s actionbar ["",{"text":"The bomb now takes ","bold":true,"color":"green"},{"nbt":"$(map).bomb_time_to_explode","storage":"ctf:map","bold":true,"color":"gold"},{"text":" seconds","bold":true,"color":"gold"},{"text":" to explode on ","bold":true,"color":"green"},{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"}]