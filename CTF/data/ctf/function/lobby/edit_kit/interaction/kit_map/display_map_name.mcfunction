$data modify storage ctf:temp kit_editor.map_name set from storage ctf:map_registry all[$(map_index)]

function ctf:lobby/edit_kit/interaction/kit_map/display_map_name_store_map_text with storage ctf:temp kit_editor
function ctf:lobby/edit_kit/interaction/kit_map/display_map_name_internal with storage ctf:temp kit_editor