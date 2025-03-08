# Helmet
item replace block ~ ~ ~ container.0 from entity @s armor.head
$data modify storage invsave players.$(id).armor.head set from block ~ ~ ~ Items[0]

# Chest
item replace block ~ ~ ~ container.1 from entity @s armor.chest
$data modify storage invsave players.$(id).armor.chest set from block ~ ~ ~ Items[1]

# Legs
item replace block ~ ~ ~ container.2 from entity @s armor.head
$data modify storage invsave players.$(id).armor.legs set from block ~ ~ ~ Items[2]

# Feet
item replace block ~ ~ ~ container.3 from entity @s armor.head
$data modify storage invsave players.$(id).armor.feet set from block ~ ~ ~ Items[3]