# Store Item
$item replace block 0 0 0 container.$(slot) from entity @s hotbar.$(slot)
$data modify storage invsave players.$(id).hotbar.$(slot) set from block 0 0 0 Items[$(slot)]

# Check if hit max
execute if score $invsave_slot value matches 8.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
function invsave:save/slot/hotbar with storage invsave players
