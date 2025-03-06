scoreboard players enable @a ctf.settings.random_teams
execute as @a[scores={ctf.settings.random_teams=1..}] run function ctf:trigger/random_teams/toggle

# Start
scoreboard players enable @a ctf.start
execute as @a[scores={ctf.start=1..}] run function ctf:trigger/start/start

# Start
scoreboard players enable ToastyDark ctf.stop
execute as @a[scores={ctf.stop=1..}] run function ctf:trigger/stop/stop