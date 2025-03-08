# Helmet
item replace block ~ ~ ~ container.0 from entity @s armor.head
$data modify storage invsave players.$(id).armor.head set value air
$data modify storage invsave players.$(id).armor.head set from block ~ ~ ~ Items[0]
$execute unless items block ~ ~ ~ container.0 * run data modify storage invsave players.$(id).armor.head set value air

# Chest
item replace block ~ ~ ~ container.1 from entity @s armor.chest
$data modify storage invsave players.$(id).armor.chest set value air
$data modify storage invsave players.$(id).armor.chest set from block ~ ~ ~ Items[1]
$execute unless items block ~ ~ ~ container.1 * run data modify storage invsave players.$(id).armor.head set value air

# Legs
item replace block ~ ~ ~ container.2 from entity @s armor.legs
$data modify storage invsave players.$(id).armor.legs set value air
$data modify storage invsave players.$(id).armor.legs set from block ~ ~ ~ Items[2]
$execute unless items block ~ ~ ~ container.2 * run data modify storage invsave players.$(id).armor.legs set value air

# Feet
item replace block ~ ~ ~ container.3 from entity @s armor.feet
$data modify storage invsave players.$(id).armor.feet set value air
$data modify storage invsave players.$(id).armor.feet set from block ~ ~ ~ Items[3]
$execute unless items block ~ ~ ~ container.3 * run data modify storage invsave players.$(id).armor.feet set value air