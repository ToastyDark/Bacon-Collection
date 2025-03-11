tag @s remove has_passenger
execute as @s on vehicle on passengers run tag @s add has_passenger

execute unless entity @s[tag=has_passenger] run return run function ctf:item/healing_arrow/remove_early