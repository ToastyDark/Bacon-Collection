$data modify storage ctf:temp echest_temp.x set value $(map).kit.x
$data modify storage ctf:temp echest_temp.y set value $(map).kit.y
$data modify storage ctf:temp echest_temp.z set value $(map).kit.z
$data modify storage ctf:temp echest_temp.dimension set value $(map).kit.dimension
$data modify storage ctf:temp echest_temp.kit_num set value $(kit_num)
$data modify storage ctf:temp echest_temp.map set value $(map)

function ctf:player/kit/rearrange/echest_load_layout_internal with storage ctf:temp echest_temp