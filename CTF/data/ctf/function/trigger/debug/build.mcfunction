# Prepare to build
data modify storage ctf:temp debug_msg set value []

# Header
$data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"[Map Info for $(map)]","bold":true,"underlined":true,"color":"gold"}]'


# Display Name
execute if data storage ctf:map desert_maze.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},{"nbt":"desert_maze.display_name","storage":"ctf:map","interpret":true}]'
$execute unless data storage ctf:map desert_maze.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},$(missing)]'


# Dimension
execute if data storage ctf:map desert_maze.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Dimension: ","bold":true,"color":"gray"},{"nbt":"desert_maze.dimension","storage":"ctf:map","interpret":true,"color":"green"}]'
$execute unless data storage ctf:map desert_maze.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Dimension: ","bold":true,"color":"gray"},$(missing)]'


# Time of Day
execute if data storage ctf:map desert_maze.time run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Time of Day: ","bold":true,"color":"gray"},{"nbt":"desert_maze.time","storage":"ctf:map","interpret":true,"color":"green"}]'
$execute unless data storage ctf:map desert_maze.time run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Time of Day: ","bold":true,"color":"gray"},$(missing)]'


# Points to Win
execute if data storage ctf:map desert_maze.points_to_win run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"Points to Win: ","bold":true,"color":"gray"},{"nbt":"desert_maze.points_to_win","storage":"ctf:map","interpret":false,"color":"green"}]'
$execute unless data storage ctf:map desert_maze.points_to_win run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Points to Win: ","bold":true,"color":"gray"},$(missing)]'



# Team 1 Data
data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":"Team 1 Map Data: ","bold":true,"underlined":true,"color":"aqua"}]'

    # Colors
    execute if data storage ctf:map desert_maze.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"   Team Color: ","bold":true,"color":"gray"},{"nbt":"desert_maze.team1.color","storage":"ctf:map","interpret":false,"color":"white"}]'
    $execute unless data storage ctf:map desert_maze.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"   Team Color: ","bold":true,"color":"gray"},$(missing)]'




# Display
tellraw @s {"nbt":"debug_msg[]","storage":"ctf:temp","interpret":true}