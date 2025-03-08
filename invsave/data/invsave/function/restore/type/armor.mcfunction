# Head
$data modify block ~ ~ ~ Items insert 0 from storage invsave players.$(id).armor.head
item replace entity @s armor.head from block ~ ~ ~ container.0

# Chest
$data modify block ~ ~ ~ Items insert 1 set from storage invsave players.$(id).armor.chest
item replace entity @s armor.chest from block ~ ~ ~ container.1

# Legs
$data modify block ~ ~ ~ Items insert 2 set from storage invsave players.$(id).armor.legs
item replace entity @s armor.legs from block ~ ~ ~ container.2

# Feet
$data modify block ~ ~ ~ Items insert 3 set from storage invsave players.$(id).armor.feet
item replace entity @s armor.feet from block ~ ~ ~ container.3