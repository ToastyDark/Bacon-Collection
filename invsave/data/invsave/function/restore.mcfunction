# Get ID
execute store result storage invsave players.id int 1 run scoreboard players get @s invsave_id

# Begin Saving Inventory with UUID ready
execute in overworld positioned 0 -64 0 run function invsave:restore/start with storage invsave players