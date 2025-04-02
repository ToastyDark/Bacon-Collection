# Start
scoreboard players enable @a ctf.start
execute as @a[scores={ctf.start=1..}] run function ctf:trigger/start/start

# Stop
scoreboard players enable ToastyDark ctf.stop
execute as @a[scores={ctf.stop=1..}] run function ctf:trigger/stop/stop

# Queue
scoreboard players enable @a ctf.queue
execute as @a[scores={ctf.queue=1..}] run function ctf:trigger/lobby_tp/tp

# CTF
scoreboard players enable @a ctf
execute as @a[scores={ctf=1..}] run function ctf:trigger/lobby_tp/tp

# Join
scoreboard players enable @a ctf.join
execute as @a[scores={ctf.join=1..}] run function ctf:trigger/join/join

# Leave
scoreboard players enable @a ctf.leave
execute as @a[scores={ctf.leave=1..}] run function ctf:trigger/leave/leave

# Invite
scoreboard players enable @a ctf.invite
execute as @a[scores={ctf.invite=1..}] run function ctf:trigger/invite/start

# Music
scoreboard players enable @a ctf.music
execute as @a[scores={ctf.music=1..}] at @s run function ctf:lobby/music/toggle/run

# Debug
scoreboard players enable @a ctf.debug
execute as @a[scores={ctf.debug=1..}] run function ctf:trigger/debug/main


# Random Teams
scoreboard players enable @a ctf.settings.random_teams
execute as @a[scores={ctf.settings.random_teams=1..}] run function ctf:trigger/random_teams/toggle

# List Maps
    scoreboard players enable ToastyDark ctf.map
    execute as @a[scores={ctf.map=1..}] run function ctf:trigger/map/_list

    scoreboard players enable ToastyDark ctf.maps
    execute as @a[scores={ctf.maps=1..}] run function ctf:trigger/map/_list

    scoreboard players enable ToastyDark ctf.map.desert_maze
    execute as @a[scores={ctf.map.desert_maze=1..}] run function ctf:trigger/map/desert_maze

    scoreboard players enable ToastyDark ctf.map.sandcastle
    execute as @a[scores={ctf.map.sandcastle=1..}] run function ctf:trigger/map/sandcastle