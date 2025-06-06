# Command Format
# function ctf:edit/map/optional/time_of_day { "map_id": "<map_id>" , "time_of_day": "<value>" }

# Set map's time of day
$data modify storage ctf:map $(map_id).time_of_day set value $(time_of_day)

# Message
$title @s actionbar ["",{"nbt":"$(map_id).display_name","storage":"ctf:map","bold":true,"color":"gold","interpret":true},{"text":" will now be ","bold":true,"color":"green"},{"nbt":"$(map_id).time_of_day","storage":"ctf:map","interpret":true,"bold":true,"color":"gold"},{"text":" time","bold":true,"color":"green"}]