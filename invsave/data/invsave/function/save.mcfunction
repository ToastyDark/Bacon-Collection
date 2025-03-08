# Give ID
execute unless entity @s[scores={invsave_id=1..}] run function invsave:id/give

# Get ID
execute store result storage invsave players.id int 1 run scoreboard players get @s invsave_id

# Begin Saving Inventory with UUID ready
execute in clone run function invsave:save/start with storage invsave players