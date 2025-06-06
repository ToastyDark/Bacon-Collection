
# Copy current kit layout to storage "ctf:temp kit_slots"
$data modify storage ctf:temp give_kit.kit_num set value $(kit_num)
$data modify storage ctf:temp give_kit.map set value $(map)
$data modify storage ctf:temp give_kit.container set value $(container)
data modify storage ctf:temp give_kit.storage set value "ctf:temp kit_slots"
# -- ... actually copy
function ctf:player/kit/rearrange/store_layout with storage ctf:temp give_kit

$data modify storage ctf:temp kit_slots.container set value $(container)

# Using the current kit layout, set the Hotbar, Offhand and Inventory items
$execute positioned ~$(kit_num) ~ ~ run function ctf:player/kit/give/give_slots with storage ctf:temp kit_slots

# Armor
#$item replace entity @s armor.head with leather_helmet[dyed_color=$(color_dec)]
$execute unless items block ~$(kit_num) ~ ~ container.22 minecraft:light_gray_stained_glass_pane run item replace entity @s armor.chest from block ~$(kit_num) ~ ~ container.22
$execute unless items block ~$(kit_num) ~ ~ container.23 minecraft:light_gray_stained_glass_pane run item replace entity @s armor.legs from block ~$(kit_num) ~ ~ container.23
$execute unless items block ~$(kit_num) ~ ~ container.24 minecraft:light_gray_stained_glass_pane run item replace entity @s armor.feet from block ~$(kit_num) ~ ~ container.24



# Leather Cap
execute if entity @s[team=ctf_team1] run function ctf:player/kit/give/helmet/immune with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/kit/give/helmet/immune with storage ctf:game team2