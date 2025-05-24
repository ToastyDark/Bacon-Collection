# Copies the layout of @s to storage $(storage_namespace) $(storage_path), $(map), $(kit_num)

# redundant redundant  (only sometimes redundant)
$data modify storage ctf:temp kit.id set value $(id)
$data modify storage ctf:temp kit.map set value $(map)
$data modify storage ctf:temp kit.kit_num set value $(kit_num)

# Make default kit layout for this player if there's no existing layout
$execute unless data storage ctf:kit $(id).$(map).$(kit) run function ctf:player/kit/rearrange/make_default_layout with storage ctf:temp kit

# Copy the default kit layout for this player to $(storage_namespace) $(storage_path)
$data modify storage $(storage_namespace) $(storage_path) set from storage ctf:kit $(id).$(map).$(kit)