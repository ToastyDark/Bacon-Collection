$summon minecraft:marker ~ ~ ~ {Tags:["chain_decoration_marker"], Rotation:[$(rotation)]}
# /function decorations:chain_link/place {"rotation":"45,45,45"}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-1 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-2 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-3 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-4 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-5 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-6 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-7 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
$execute as @e[tag=chain_decoration_marker] at @s rotated as @s run summon minecraft:block_display ^ ^-8 ^ {block_state:{Name:iron_chain},Tags:["chain_decoration"], Rotation:[$(rotation)]}
kill @e[tag=chain_decoration_marker]