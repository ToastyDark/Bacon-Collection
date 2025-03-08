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


# Scoreboard
function ctf:setup/scoreboard/start with storage ctf:game

# Place Team Flags
schedule function ctf:game/flag/place/start 10t append


# ------------------------Players------------------------
# Set Players as in game
execute as @a[tag=ctf_queue] run tag @s add ctf_player


# Sort Teams
execute if data storage ctf:settings {random_teams:true} run function ctf:setup/random_teams/loop

# Spawn Players
function ctf:setup/spawn/start with storage ctf:game team1
function ctf:setup/spawn/start with storage ctf:game team2


# Set to 1st Kit
scoreboard players set @a[tag=ctf_player] ctf_kit 0
execute as @a[tag=ctf_player] run function ctf:player/kit/update with storage ctf:game

# Set as Respawn
execute as @a[tag=ctf_player] run function ctf:player/respawn/add_tag



# Start Game
data modify storage ctf:game started set value true