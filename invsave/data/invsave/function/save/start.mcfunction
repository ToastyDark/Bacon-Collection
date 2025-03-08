# Reset Shulkerbox
setblock ~ ~ ~ yellow_shulker_box
data remove block ~ ~ ~ Items

# Store Hotbar
scoreboard players set $invsave_slot value 0
execute store result storage invsave players.slot int 1 run scoreboard players get $invsave_slot value
function invsave:save/slot/hotbar with storage invsave players










# Get Contents from Inventory
#$data modify storage invsave:players [].save set from entity @s Inventory
#$data modify storage invsave inv.[{UUID:[$(UUID0),$(UUID1),$(UUID2),$(UUID3)]}].save set from entity @s Inventory