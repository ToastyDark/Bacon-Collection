# Copy current kit layout to storage "ctf:temp kit_slots"
$data modify storage ctf:temp give_kit.kit_num set value $(kit_num)
$data modify storage ctf:temp give_kit.map set value $(map)
data modify storage ctf:temp give_kit.container set value enderchest
data modify storage ctf:temp give_kit.storage set value "ctf:temp kit_slots"
# -- ... actually copy
function ctf:player/kit/rearrange/store_layout with storage ctf:temp give_kit

data modify storage ctf:temp kit_slots.container set value enderchest

# Using the current kit layout, set the Hotbar, Offhand and Inventory items
$execute positioned ~$(kit_num) ~ ~ run function ctf:player/kit/give/give_slots with storage ctf:temp kit_slots