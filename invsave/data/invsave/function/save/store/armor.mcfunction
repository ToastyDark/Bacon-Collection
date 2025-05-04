# Helmet
item replace block ~ ~ ~ container.0 from entity @s armor.head
$data modify storage invsave $(path).$(id).armor.head set from block ~ ~ ~ Items[{Slot:0b}]

# Chest
item replace block ~ ~ ~ container.1 from entity @s armor.chest
$data modify storage invsave $(path).$(id).armor.chest set from block ~ ~ ~ Items[{Slot:1b}]

# Legs
item replace block ~ ~ ~ container.2 from entity @s armor.legs
$data modify storage invsave $(path).$(id).armor.legs set from block ~ ~ ~ Items[{Slot:2b}]

# Feet
item replace block ~ ~ ~ container.3 from entity @s armor.feet
$data modify storage invsave $(path).$(id).armor.feet set from block ~ ~ ~ Items[{Slot:3b}]