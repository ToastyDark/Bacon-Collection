$data modify block ~ ~ ~ Items insert $(slot) from storage invsave $(path).$(id).inventory.$(slot)
$item replace entity @s inventory.$(slot) from block ~ ~ ~ container.$(slot)
$execute unless items block ~ ~ ~ container.$(slot) * run data modify block ~ ~ ~ Items insert $(slot) value {"id":"minecraft:barrier","count":1,Slot:$(slot)b}

# Check if hit max
execute if score $invsave_slot value matches 26.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
$execute store result storage invsave $(path).slot int 1 run scoreboard players get $invsave_slot value
$function invsave:restore/type/inventory with storage invsave $(path)
