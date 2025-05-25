$data modify storage ctf:temp echest_temp.x set from storage ctf:map $(map).kit.x
$data modify storage ctf:temp echest_temp.y set from storage ctf:map $(map).kit.y
$data modify storage ctf:temp echest_temp.z set from storage ctf:map $(map).kit.z
$data modify storage ctf:temp echest_temp.dimension set from storage ctf:map $(map).kit.dimension
$data modify storage ctf:temp echest_temp.kit_num set value $(kit_num)
$data modify storage ctf:temp echest_temp.map set value $(map)

function ctf:player/kit/rearrange/echest_load_layout_internal with storage ctf:temp echest_temp