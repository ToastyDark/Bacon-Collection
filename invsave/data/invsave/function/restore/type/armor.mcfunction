# Head
$data modify block ~ ~ ~ Items[{Slot:0b}] set from storage invsave players.$(id).armor.head
item replace entity @s armor.head from block ~ ~ ~ container.0

# Chest
$data modify block ~ ~ ~ Items[{Slot:1b}] set from storage invsave players.$(id).armor.chest
item replace entity @s armor.chest from block ~ ~ ~ container.1

# Legs
$data modify block ~ ~ ~ Items[{Slot:2b}] set from storage invsave players.$(id).armor.legs
item replace entity @s armor.legs from block ~ ~ ~ container.2

# Feet
$data modify block ~ ~ ~ Items[{Slot:3b}] set from storage invsave players.$(id).armor.feet
item replace entity @s armor.feet from block ~ ~ ~ container.3