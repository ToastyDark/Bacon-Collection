# Give ID
execute unless entity @s[scores={invsave_id=1..}] run function invsave:id/give

# Get ID
$execute store result storage invsave $(path).id int 1 run scoreboard players get @s invsave_id

# Set Path
$data modify storage invsave $(path).path set value $(path)

# Begin Saving Inventory with UUID ready
$execute in overworld positioned 0 -64 0 run function invsave:save/start with storage invsave $(path)