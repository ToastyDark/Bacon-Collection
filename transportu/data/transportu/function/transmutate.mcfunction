summon item ~ ~ ~ {Item:{count: 1, id: "minecraft:snowball"}, Tags:["new_snowball"], PickupDelay:10}
data modify entity @e[type=item,tag=new_snowball,limit=1] Motion set from entity @s Motion
tag @e[type=item] remove new_snowball
kill @s