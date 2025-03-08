# Store Item
$item replace block ~ ~ ~ container.$(slot) from entity @s inventory.$(slot)
$data modify storage invsave players.$(id).inventory.$(slot) set from block ~ ~ ~ Items[$(slot)]
$execute unless items block ~ ~ ~ container.$(slot) * run data modify storage invsave players.$(id).inventory.$(slot) set value air

# Check if hit max
execute if score $invsave_slot value matches 26.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
execute store result storage invsave players.slot int 1 run scoreboard players get $invsave_slot value
function invsave:save/store/inventory with storage invsave players