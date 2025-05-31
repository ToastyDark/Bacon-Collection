# Store Item
$item replace block ~ ~ ~ container.$(slot) from entity @s enderchest.$(slot)
$data modify storage invsave $(path).$(id).enderchest.$(slot) set from block ~ ~ ~ Items[{Slot:$(slot)b}]

# Check if hit max
execute if score $invsave_slot value matches 26.. run return fail

# Add 1 and Loop again
scoreboard players add $invsave_slot value 1
$execute store result storage invsave $(path).slot int 1 run scoreboard players get $invsave_slot value
$function ecsave:save/store with storage ecsave $(path)



#item replace block ~ ~ ~ container.0 from entity @s enderchest.0