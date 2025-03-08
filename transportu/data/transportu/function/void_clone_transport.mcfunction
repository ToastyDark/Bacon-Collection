
execute if entity @s[nbt={Dimension:"minecraft:clone"}] run tag @s add should_teleport_to_void
execute unless entity @s[tag=should_teleport_to_void] run trigger clone
execute if entity @s[tag=should_teleport_to_void] run trigger void
tag @a[tag=should_teleport_to_void] remove should_teleport_to_void