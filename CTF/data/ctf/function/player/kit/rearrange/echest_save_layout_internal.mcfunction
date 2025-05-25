# Saves the layout from a player's ender chest

# Fill empty slots with glass panes
function ctf:player/kit/rearrange/echest_fill_empty_slots

# Clear
function ctf:player/kit/rearrange/echest_clear

# Save layout
data modify storage ctf:temp echest_layout.0 set from entity @s EnderItems[0].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.1 set from entity @s EnderItems[1].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.2 set from entity @s EnderItems[2].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.3 set from entity @s EnderItems[3].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.4 set from entity @s EnderItems[4].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.5 set from entity @s EnderItems[5].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.6 set from entity @s EnderItems[6].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.7 set from entity @s EnderItems[7].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.8 set from entity @s EnderItems[8].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.9 set from entity @s EnderItems[9].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.10 set from entity @s EnderItems[10].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.11 set from entity @s EnderItems[11].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.12 set from entity @s EnderItems[12].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.13 set from entity @s EnderItems[13].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.14 set from entity @s EnderItems[14].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.15 set from entity @s EnderItems[15].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.16 set from entity @s EnderItems[16].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.17 set from entity @s EnderItems[17].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.18 set from entity @s EnderItems[18].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.19 set from entity @s EnderItems[19].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.20 set from entity @s EnderItems[20].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.21 set from entity @s EnderItems[21].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.22 set from entity @s EnderItems[22].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.23 set from entity @s EnderItems[23].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.24 set from entity @s EnderItems[24].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.25 set from entity @s EnderItems[25].components."minecraft:custom_data".original_slot
data modify storage ctf:temp echest_layout.26 set from entity @s EnderItems[26].components."minecraft:custom_data".original_slot

# Copy saved layout to player for map
$data modify storage ctf:kit $(id).$(map).$(kit_num) set from storage ctf:temp echest_layout