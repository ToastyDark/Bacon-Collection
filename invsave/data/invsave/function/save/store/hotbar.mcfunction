# Store Item
$item replace block ~ ~ ~ container.$(slot) from entity @s hotbar.$(slot)
$data modify storage invsave $(path).$(id).hotbar.$(slot) set from block ~ ~ ~ Items[{Slot:$(slot)b}]

# Check if hit max
execute if score $invsave_slot value matches 8.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
$execute store result storage invsave $(path).slot int 1 run scoreboard players get $invsave_slot value
$function invsave:save/store/hotbar with storage invsave $(path)