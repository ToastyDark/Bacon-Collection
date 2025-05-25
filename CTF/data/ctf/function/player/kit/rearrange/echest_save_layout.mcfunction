# Runs echest_save_layout_internal with the id of the current player

execute store result storage ctf:temp echest.id int 1 run scoreboard players get @s id
$data modify storage ctf:temp echest.map set value $(map)
$data modify storage ctf:temp echest.kit_num set value $(kit_num)

function ctf:player/kit/rearrange/echest_save_layout_internal with storage ctf:temp echest