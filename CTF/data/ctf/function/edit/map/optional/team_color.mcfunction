# Command Format
# function ctf:edit/map/optional/points_to_win { "team" : "1" , "map_id": "<map_id>" , "color": <color> }
# function ctf:edit/map/optional/points_to_win { "team" : "2" , "map_id": "<map_id>" , "color": <color> }


# Set map's team color
$data modify storage ctf:map $(map_id).team$(team).color set value $(color)

# Message
$title @s actionbar ["",{"text":"Team $(team)","bold":true,"color":"$(color)"},{"text":" is now ","bold":true,"color":"green"},{"nbt":"$(map_id).team$(team).color","storage":"ctf:map","bold":true,"color":"$(color)"},{"text":" on ","bold":true,"color":"green"},{"nbt":"$(map).display_name","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"}]