# Store Item
$item replace block ~ ~ ~ container.$(slot) from entity @s inventory.$(slot)
$data modify storage invsave $(path).$(id).inventory.$(slot) set from block ~ ~ ~ Items[{Slot:$(slot)b}]

# Check if hit max
execute if score $invsave_slot value matches 26.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
$execute store result storage invsave $(path).slot int 1 run scoreboard players get $invsave_slot value
$function invsave:save/store/inventory with storage invsave $(path)