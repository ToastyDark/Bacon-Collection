# ------------------------Check if Should------------------------
# Stop if game is already runningh
execute if data storage ctf:game {started:true} run return run function ctf:lobby/msg/game_already

# Stop if no one's in queue
function ctf:lobby/queue/empty/check
execute if data storage ctf:temp {queue_empty:true} run return run title @s actionbar {"text": "No players are queued for CTF","bold": true,"color": "red"}


# ------------------------Prep Game------------------------
# Create Teams
team add ctf_team1
team add ctf_team2

# Modify Teams
function ctf:setup/team/modify with storage ctf:game team1
function ctf:setup/team/modify with storage ctf:game team2



# Load Map Specific Data
function ctf:setup/map/load_data with storage ctf:game


# Time of Day
function ctf:setup/time/start with storage ctf:game


# Scoreboard
function ctf:setup/scoreboard/start with storage ctf:game

# Place Team Flags
schedule function ctf:game/flag/place/start 10t append

# Place Bomb
schedule function ctf:game/_bomb/place/start 10t append

# Place Bomb Sites
execute if data storage ctf:game {bomb_method:new} run schedule function ctf:game/_bomb/site/place/start 10t append

# Set Game ID
scoreboard players add $ctf_session value 1


data remove storage ctf:game winning_team
data remove storage ctf:game losing_team


# ------------------------Players------------------------
scoreboard players set $ctf_team1_count value 0
scoreboard players set $ctf_team2_count value 0
# ------------Sort Teams ------------
function ctf:setup/team/sort/sort


# ------------ Spawn Players ------------
function ctf:setup/spawn/start with storage ctf:game team1
function ctf:setup/spawn/start with storage ctf:game team2


# Prepare Player
execute as @a[tag=ctf_player] run function ctf:player/join/setup


# Prepare Voicechat
execute unless data storage ctf:game {voicechat:false} run function voicechat:ctf/setup




# Start Game
data modify storage ctf:game started set value true


# Update lobby player count display
function ctf:lobby/display/count/teams/count