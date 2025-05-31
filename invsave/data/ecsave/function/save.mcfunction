# Get ID
$execute store result storage invsave $(path).id int 1 run scoreboard players get @s id

# Set Path
$data modify storage invsave $(path).path set value $(path)

# Begin Saving Enderchest with ID read
$execute in overworld positioned 0 -64 0 run function ecsave:save/start with storage invsave $(path)