# Get ID
$execute store result storage invsave $(path).id int 1 run scoreboard players get @s id

# Get Path
$data modify storage invsave $(path).path set value $(path)

# Begin Saving Inventory with UUID ready
$execute in overworld positioned 0 -64 0 run function ecsave:restore/start with storage invsave $(path)