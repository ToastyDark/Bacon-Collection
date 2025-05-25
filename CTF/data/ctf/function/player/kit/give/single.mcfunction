# Copy a single item in a kit to storage "ctf:temp kit_item".
# This command works with the original kit, so ignores layouts.
# It uses array indices, so the kit needs to have glass panes properly placed

$data modify storage ctf:temp kit_item.x set from storage ctf:map $(map).kit.x
$data modify storage ctf:temp kit_item.y set from storage ctf:map $(map).kit.x
$data modify storage ctf:temp kit_item.z set from storage ctf:map $(map).kit.x
$data modify storage ctf:temp kit_item.dimension set from storage ctf:map $(map).kit.dimension
$data modify storage ctf:temp kit_item.kit_num set value $(kit_num)
$data modify storage ctf:temp kit_item.slot set value $(slot)

function ctf:player/kit/give/single_internal with storage ctf:temp kit_item