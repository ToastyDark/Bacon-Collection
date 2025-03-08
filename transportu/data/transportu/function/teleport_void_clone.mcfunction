# Teleport between the void and clone worlds

# If you're in the clone world, add tag "should_teleport_to_void" [Tagging circumvents teleporting to one and back instantly]
execute if entity @s[nbt={Dimension:"minecraft:clone"}] run tag @s add should_teleport_to_void

# If you don't have the tag to teleport to the void world, teleport to the clone one
execute unless entity @s[tag=should_teleport_to_void] run trigger clone

# Otherwise, teleport to void
execute if entity @s[tag=should_teleport_to_void] run trigger void

# Remove tag
tag @a[tag=should_teleport_to_void] remove should_teleport_to_void