# Prepare to build
data modify storage ctf:temp debug_msg set value []

# Header
$data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"[Map Info for $(map)]","bold":true,"underlined":true,"color":"gold"}]'


# Display Name
execute if data storage ctf:map sandcastle.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},{"nbt":"sandcastle.display_name","storage":"ctf:map","interpret":true}]'
$execute unless data storage ctf:map sandcastle.display_name run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Display Name: ","bold":true,"color":"gray"},$(missing)]'


# Dimension
execute if data storage ctf:map sandcastle.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Dimension: ","bold":true,"color":"gray"},{"nbt":"sandcastle.dimension","storage":"ctf:map","interpret":true,"color":"green"}]'
$execute unless data storage ctf:map sandcastle.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Dimension: ","bold":true,"color":"gray"},$(missing)]'


# Time of Day
execute if data storage ctf:map sandcastle.time run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Time of Day: ","bold":true,"color":"gray"},{"nbt":"sandcastle.time","storage":"ctf:map","interpret":true,"color":"green"}]'
$execute unless data storage ctf:map sandcastle.time run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Time of Day: ","bold":true,"color":"gray"},$(missing)]'


# Points to Win
execute if data storage ctf:map sandcastle.points_to_win run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"Points to Win: ","bold":true,"color":"gray"},{"nbt":"sandcastle.points_to_win","storage":"ctf:map","interpret":false,"color":"green"}]'
$execute unless data storage ctf:map sandcastle.points_to_win run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Points to Win: ","bold":true,"color":"gray"},$(missing)]'


# Flag Respawn Timer
execute if data storage ctf:map sandcastle.flag_respawn_delay run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"\\n"},{"text":"Flag Respawn Delay: ","bold":true,"color":"gray"},{"nbt":"sandcastle.flag_respawn_delay","storage":"ctf:map","interpret":false,"color":"gold"},{"text":"s","bold":false,"color":"gold"}]'
$execute unless data storage ctf:map sandcastle.flag_respawn_delay run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":" Flag Respawn Delay: ","bold":true,"color":"gray"},$(missing)]'

# Bomb Respawn Timer
execute if data storage ctf:map sandcastle.bomb_respawn_delay run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"Bomb Respawn Delay: ","bold":true,"color":"gray"},{"nbt":"sandcastle.bomb_respawn_delay","storage":"ctf:map","interpret":false,"color":"gold"},{"text":"s","bold":false,"color":"gold"}]'
$execute unless data storage ctf:map sandcastle.bomb_respawn_delay run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":" Bomb Respawn Delay: ","bold":true,"color":"gray"},$(missing)]'



# Bomb Data
    data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":"Bomb Pos: (","bold":true,"color":"gray"}]'

    #x
    execute if data storage ctf:map sandcastle.bomb.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.bomb.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.bomb.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

    #y
    execute if data storage ctf:map sandcastle.bomb.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.bomb.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.bomb.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

    #z
    execute if data storage ctf:map sandcastle.bomb.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.bomb.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.bomb.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'






# Team 1 Data
    data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":"Team 1 Map Data","bold":true,"underlined":true,"color":"red"}]'

    # Colors
    execute if data storage ctf:map sandcastle.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Team Color: ","bold":false,"color":"gray"},{"nbt":"sandcastle.team1.color","storage":"ctf:map","interpret":false,"color":"white"}]'
    $execute unless data storage ctf:map sandcastle.team1.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":" Team Color: ","bold":false,"color":"gray"},$(missing)]'


    # Spawn Point
        data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Spawn Point: (","bold":false,"color":"gray"}]'

        #x
        execute if data storage ctf:map sandcastle.team1.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.spawn.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

        #y
        execute if data storage ctf:map sandcastle.team1.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.spawn.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

        #z
        execute if data storage ctf:map sandcastle.team1.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.spawn.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'

        #rx
        execute if data storage ctf:map sandcastle.team1.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":" rx: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.spawn.rx","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"rx: ","color":"gray"},$(m)]'

        #ry
        execute if data storage ctf:map sandcastle.team1.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":" ry: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.spawn.ry","storage":"ctf:map","interpret":false,"color":"gold"},{"text":")","color":"gray"}]'
        $execute unless data storage ctf:map sandcastle.team1.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"ry: ","color":"gray"},$(m),{"text":")","color":"gray"}]'

    # Flag Data
        data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Flag Pos: (","bold":false,"color":"gray"}]'

        #x
        execute if data storage ctf:map sandcastle.team1.flag.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.flag.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.flag.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

        #y
        execute if data storage ctf:map sandcastle.team1.flag.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.flag.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.flag.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

        #z
        execute if data storage ctf:map sandcastle.team1.flag.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.team1.flag.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team1.flag.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'


# Team 2 Data
    data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":"Team 2 Map Data","bold":true,"underlined":true,"color":"blue"}]'

    # Colors
    execute if data storage ctf:map sandcastle.team2.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Team Color: ","bold":false,"color":"gray"},{"nbt":"sandcastle.team2.color","storage":"ctf:map","interpret":false,"color":"white"}]'
    $execute unless data storage ctf:map sandcastle.team2.color run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":" Team Color: ","bold":false,"color":"gray"},$(missing)]'


    # Spawn Point
        data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Spawn Point: (","bold":false,"color":"gray"}]'

        #x
        execute if data storage ctf:map sandcastle.team2.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.spawn.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.spawn.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

        #y
        execute if data storage ctf:map sandcastle.team2.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.spawn.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.spawn.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

        #z
        execute if data storage ctf:map sandcastle.team2.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.spawn.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.spawn.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'

        #rx
        execute if data storage ctf:map sandcastle.team2.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":" rx: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.spawn.rx","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.spawn.rx run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"rx: ","color":"gray"},$(m)]'

        #ry
        execute if data storage ctf:map sandcastle.team2.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":" ry: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.spawn.ry","storage":"ctf:map","interpret":false,"color":"gold"},{"text":")","color":"gray"}]'
        $execute unless data storage ctf:map sandcastle.team2.spawn.ry run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"ry: ","color":"gray"},$(m),{"text":")","color":"gray"}]'



    # Flag Data
        data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":" Flag Pos: (","bold":false,"color":"gray"}]'

        #x
        execute if data storage ctf:map sandcastle.team2.flag.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.flag.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.flag.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

        #y
        execute if data storage ctf:map sandcastle.team2.flag.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.flag.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.flag.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

        #z
        execute if data storage ctf:map sandcastle.team2.flag.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.team2.flag.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
        $execute unless data storage ctf:map sandcastle.team2.flag.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'



# Kit Data
    data modify storage ctf:temp debug_msg append value '[{"text":"\\n","interpret":true},{"text":"\\n","interpret":true},{"text":" Kit Data: (","bold":true,"color":"gray"}]'

    #x
    execute if data storage ctf:map sandcastle.kit.x run data modify storage ctf:temp debug_msg append value '[{"text":"x: ","bold":false,"color":"white"},{"nbt":"sandcastle.kit.x","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.kit.x run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"x: ","color":"gray"},$(m)]'

    #y
    execute if data storage ctf:map sandcastle.kit.y run data modify storage ctf:temp debug_msg append value '[{"text":" y: ","bold":false,"color":"white"},{"nbt":"sandcastle.kit.y","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.kit.y run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"y: ","color":"gray"},$(m)]'

    #z
    execute if data storage ctf:map sandcastle.kit.z run data modify storage ctf:temp debug_msg append value '[{"text":" z: ","bold":false,"color":"white"},{"nbt":"sandcastle.kit.z","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.kit.z run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"z: ","color":"gray"},$(m)]'

    # Dimension
    execute if data storage ctf:map sandcastle.kit.dimension run data modify storage ctf:temp debug_msg append value '[{"text":" world: ","bold":false,"color":"white"},{"nbt":"sandcastle.kit.dimension","storage":"ctf:map","interpret":false,"color":"gold"}]'
    $execute unless data storage ctf:map sandcastle.kit.dimension run data modify storage ctf:temp debug_msg append value '[{"text":"\\n"},{"text":"world: ","color":"gray"},$(m)]'






# Display
tellraw @s {"nbt":"debug_msg[]","storage":"ctf:temp","interpret":true}