# Prepare to build
data modify storage ctf:temp debug_msg set value []

# Top
$tellraw @s {"text":"Map Info for $(map)"}

tellraw @s {"text":"Display"}


# Display
function ctf:trigger/debug/tellraw with storage ctf:game temp