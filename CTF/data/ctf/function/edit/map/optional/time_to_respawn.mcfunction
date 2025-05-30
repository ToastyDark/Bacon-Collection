# Command Format
# function ctf:edit/map/optional/time_to_respawn { "map_id": "<map_id>" , "time_to_respawn": <value> }

# Set map's points to win
$data modify storage ctf:map $(map_id).time_to_respawn set value $(time_to_respawn)

# Message
$title @s actionbar ["",{"text":"It now takes ","bold":true,"color":"green"},{"nbt":"$(map).time_to_respawn","storage":"ctf:map","bold":true,"color":"gold"},{"text":" seconds to respawn on ","bold":true,"color":"green"},{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"}]