# Head
$data modify block ~ ~ ~ Items insert 0 from storage invsave players.$(id).armor.head
item replace entity @s armor.head from block ~ ~ ~ container.0
execute unless items block ~ ~ ~ container.0 * run data modify block ~ ~ ~ Items insert 0 value {"id":"minecraft:barrier","count":1,Slot:0b}

# Chest
$data modify block ~ ~ ~ Items insert 1 from storage invsave players.$(id).armor.chest
item replace entity @s armor.chest from block ~ ~ ~ container.1
execute unless items block ~ ~ ~ container.1 * run data modify block ~ ~ ~ Items insert 1 value {"id":"minecraft:barrier","count":1,Slot:1b}

# Legs
$data modify block ~ ~ ~ Items insert 2 from storage invsave players.$(id).armor.legs
item replace entity @s armor.legs from block ~ ~ ~ container.2
execute unless items block ~ ~ ~ container.2 * run data modify block ~ ~ ~ Items insert 2 value {"id":"minecraft:barrier","count":1,Slot:2b}

# Feet
$data modify block ~ ~ ~ Items insert 3 from storage invsave players.$(id).armor.feet
item replace entity @s armor.feet from block ~ ~ ~ container.3
execute unless items block ~ ~ ~ container.3 * run data modify block ~ ~ ~ Items insert 3 value {"id":"minecraft:barrier","count":1,Slot:3b}