# ------------------------Check if Should------------------------
# Stop if game is already runningh
execute if data storage ctf:game {started:true} run return run title @s actionbar {"text": "A CTF Game is already in session!","bold": true,"color": "red"}

# Stop if no one's in queue
execute unless entity @a[tag=ctf_queue] run return run title @s actionbar {"text": "No players are queued for CTF","bold": true,"color": "red"}


# ------------------------Prep Game------------------------
# Create Teams
team add ctf_team1
team add ctf_team2

# Modify Teams
function ctf:setup/team/modify with storage ctf:game team1
function ctf:setup/team/modify with storage ctf:game team2

# Load Map Specific Data
function ctf:setup/load_map_data with storage ctf:game

# Time of Day
function ctf:setup/time/start with storage ctf:game


# Scoreboard
function ctf:setup/scoreboard/start with storage ctf:game

# Place Team Flags
schedule function ctf:game/flag/place/start 10t append

# Replace Bomb
schedule function ctf:game/bomb/place/start 10t append

# Set Game ID
scoreboard players add $ctf_session value 1


# ------------------------Players------------------------
# Set Players as in game
execute as @a[tag=ctf_queue] run tag @s add ctf_player


# Sort Teams
execute if data storage ctf:settings {random_teams:true} run function ctf:setup/random_teams/loop

# Spawn Players
function ctf:setup/spawn/start with storage ctf:game team1
function ctf:setup/spawn/start with storage ctf:game team2


# Prepare Player
execute as @a[tag=ctf_player] run function ctf:player/join/setup



# Start Game
data modify storage ctf:game started set value true