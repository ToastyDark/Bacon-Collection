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
    data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":"Team 1 Map Data","bold":true,"underlined":true,"color":"red"}]'

    # Colors
    execute if data storage ctf:map desert_maze.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Team Color: ","bold":false,"color":"gray"},{"nbt":"desert_maze.team1.color","storage":"ctf:map","interpret":false,"color":"white"}]'
    $execute unless data storage ctf:map desert_maze.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":" Team Color: ","bold":false,"color":"gray"},$(missing)]'


    # Spawn Point
        data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Spawn Point","bold":false,"color":"gray"}]'

        #x
        execute if data storage ctf:map desert_maze.team1.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"    x: ","bold":true,"color":"white"},{"nbt":"desert_maze.team1.spawn.x","storage":"ctf:map","interpret":false,"color":"gold","bold":true}]'
        $execute unless data storage ctf:map desert_maze.team1.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"    x: ","bold":false,"color":"gray"},$(missing)]'

        #y
        execute if data storage ctf:map desert_maze.team1.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"    y: ","bold":true,"color":"white"},{"nbt":"desert_maze.team1.spawn.y","storage":"ctf:map","interpret":false,"color":"gold","bold":true}]'
        $execute unless data storage ctf:map desert_maze.team1.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"    y: ","bold":false,"color":"gray"},$(missing)]'

        #z
        execute if data storage ctf:map desert_maze.team1.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"    z: ","bold":true,"color":"white"},{"nbt":"desert_maze.team1.spawn.z","storage":"ctf:map","interpret":false,"color":"gold","bold":true}]'
        $execute unless data storage ctf:map desert_maze.team1.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"    z: ","bold":false,"color":"gray"},$(missing)]'

        #rx
        execute if data storage ctf:map desert_maze.team1.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"    rx: ","bold":true,"color":"white"},{"nbt":"desert_maze.team1.spawn.rx","storage":"ctf:map","interpret":false,"color":"gold","bold":true}]'
        $execute unless data storage ctf:map desert_maze.team1.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"    rx: ","bold":false,"color":"gray"},$(missing)]'

        #ry
        execute if data storage ctf:map desert_maze.team1.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"    ry: ","bold":true,"color":"white"},{"nbt":"desert_maze.team1.spawn.ry","storage":"ctf:map","interpret":false,"color":"gold","bold":true}]'
        $execute unless data storage ctf:map desert_maze.team1.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"    ry: ","bold":false,"color":"gray"},$(missing)]'




# Display
tellraw @s {"nbt":"debug_msg[]","storage":"ctf:temp","interpret":true}