# Helmet
item replace block ~ ~ ~ container.0 from entity @s armor.head
$data modify storage invsave players.$(id).armor.head set from block ~ ~ ~ Items[{Slot:0b}]
$execute unless items block ~ ~ ~ container.$(slot) * run data modify block ~ ~ ~ Items insert $(slot) value {"id":"minecraft:barrier","count":1,Slot:$(slot)b}

# Chest
item replace block ~ ~ ~ container.1 from entity @s armor.chest
$data modify storage invsave players.$(id).armor.chest set from block ~ ~ ~ Items[{Slot:1b}]
$execute unless items block ~ ~ ~ container.$(slot) * run data modify block ~ ~ ~ Items insert $(slot) value {"id":"minecraft:barrier","count":1,Slot:$(slot)b}

# Legs
item replace block ~ ~ ~ container.2 from entity @s armor.legs
$data modify storage invsave players.$(id).armor.legs set from block ~ ~ ~ Items[{Slot:2b}]
$execute unless items block ~ ~ ~ container.$(slot) * run data modify block ~ ~ ~ Items insert $(slot) value {"id":"minecraft:barrier","count":1,Slot:$(slot)b}

# Feet
item replace block ~ ~ ~ container.3 from entity @s armor.feet
$data modify storage invsave players.$(id).armor.feet set from block ~ ~ ~ Items[{Slot:3b}]
$execute unless items block ~ ~ ~ container.$(slot) * run data modify block ~ ~ ~ Items insert $(slot) value {"id":"minecraft:barrier","count":1,Slot:$(slot)b}