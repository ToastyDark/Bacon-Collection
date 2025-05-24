# Runs copy_current_layout_to_storage with the id of the current player

execute store result storage ctf:temp kit.id int 1 run scoreboard players get @s id
$data modify storage ctf:temp kit.map set value $(map)
$data modify storage ctf:temp kit.kit_num set value $(kit_num)
$data modify storage ctf:temp kit.kit_num set value $(storage)

function ctf:player/kit/rearrange/copy_current_layout_to_storage with storage ctf:temp kit