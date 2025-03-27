# Prepare to build
data modify storage ctf:temp debug_msg set value []

# Header
$data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"[Map Info for $(map)]","bold":true,"underlined":true,"color":"gold"},{"text":"\\n"}]'


# Display Name
execute if data storage ctf:map desert_maze.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},{"nbt":"desert_maze.display_name","storage":"ctf:map","interpret":true}]'
$execute unless data storage ctf:map desert_maze.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},$(missing)]'


# Dimension
execute if data storage ctf:map desert_maze.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},{"nbt":"desert_maze.dimension","storage":"ctf:map","interpret":true}]'
$execute unless data storage ctf:map desert_maze.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Dimension: ","bold":true,"color":"gray"},$(missing)]'



# Display
tellraw @s {"nbt":"debug_msg[]","storage":"ctf:temp","interpret":true}