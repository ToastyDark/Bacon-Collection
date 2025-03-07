# Start
scoreboard players enable @a ctf.start
execute as @a[scores={ctf.start=1..}] run function ctf:trigger/start/start

# Stop
scoreboard players enable ToastyDark ctf.stop
execute as @a[scores={ctf.stop=1..}] run function ctf:trigger/stop/stop

# Queue
scoreboard players enable @a ctf.queue
execute as @a[scores={ctf.queue=1..}] run function ctf:trigger/queue/queue


# Random Teams
scoreboard players enable @a ctf.settings.random_teams
execute as @a[scores={ctf.settings.random_teams=1..}] run function ctf:trigger/random_teams/toggle

# List Maps
scoreboard players enable ToastyDark ctf.map
execute as @a[scores={ctf.map=1..}] run function ctf:trigger/map/_list