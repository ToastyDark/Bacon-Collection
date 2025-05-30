# Command Format
# function ctf:edit/map/optional/flag_respawn_delay { "map_id": "<map_id>" , "flag_respawn_delay": <value> }

# Set map's flag respawn delay
$data modify storage ctf:map $(map_id).flag_respawn_delay set value $(flag_respawn_delay)

# Message
$title @s actionbar ["",{"text":"The flag now takes ","bold":true,"color":"green"},{"nbt":"$(map).flag_respawn_delay","storage":"ctf:map","bold":true,"color":"gold"},{"text":" seconds","bold":true,"color":"gold"},{"text":" to respawn on ","bold":true,"color":"green"},{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"}]