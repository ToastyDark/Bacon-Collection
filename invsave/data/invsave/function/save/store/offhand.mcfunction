# Offhand
item replace block ~ ~ ~ container.0 from entity @s weapon.offhand
#$data modify storage invsave players.$(id).offhand.offhand set value air
$data modify storage invsave players.$(id).offhand.offhand set from block ~ ~ ~ Items[{Slot:0b}]
$execute unless items block ~ ~ ~ container.0 * run data modify storage invsave players.$(id).offhand.offhand set value air