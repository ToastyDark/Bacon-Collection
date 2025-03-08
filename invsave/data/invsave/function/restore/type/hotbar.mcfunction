$data modify block ~ ~ ~ Items[{Slot:$(slot)b}] set from storage invsave players.$(id).hotbar.$(slot)
$item replace entity @s hotbar.$(slot) from block ~ ~ ~ container.$(slot)

# Check if hit max
execute if score $invsave_slot value matches 8.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
execute store result storage invsave players.slot int 1 run scoreboard players get $invsave_slot value
function invsave:restore/type/hotbar with storage invsave players
