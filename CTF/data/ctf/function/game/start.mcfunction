# Create Teams
function ctf:setup/team_1/create
function ctf:setup/team_2/create

# Load Map Data
function ctf:setup/map with storage ctf:game


# Scoreboard
function ctf:setup/scoreboard/start

# Place Team Flags
schedule function ctf:game/flag/place/start 10t append


# ----------------------Players----------------------
# Set Players as in game
execute as @a[tag=ctf_queue] run tag @s add ctf_player


# Sort Teams
execute if data storage ctf:settings {random_teams:true} run function ctf:setup/random_teams/loop

# Spawn Players
function ctf:setup/spawn/start with storage ctf:game


# Set to 1st Kit
execute as @a[tag=ctf_player] run scoreboard players set @s ctf_kit 0
execute as @a[tag=ctf_player] run function ctf:player/kit/update with storage ctf:game

# Set as Respawn
execute as @a[tag=ctf_player] run function ctf:player/respawn/add_tag



# Start Game
data modify storage ctf:game started set value true