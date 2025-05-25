scoreboard players remove @s ctf_kit_editor_map 1

execute store result storage ctf:temp kit_editor.bounds.map_count int 1 run data get storage ctf:map_registry all
function ctf:lobby/edit_kit/interaction/kit_map/check_bounds with storage ctf:temp kit_editor.bounds

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 0.9 0.1

execute store result storage ctf:temp kit_editor.map_index int 1 run scoreboard players get @s ctf_kit_editor_map
function ctf:lobby/edit_kit/interaction/kit_map/display_map_name with storage ctf:temp kit_editor