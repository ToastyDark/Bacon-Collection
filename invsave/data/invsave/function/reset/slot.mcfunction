data remove block ~ ~ ~ Items
scoreboard players set $invsave_slot value 0
$execute store result storage invsave $(path).slot int 1 run scoreboard players get $invsave_slot value