# Stop Game
data modify storage ctf:game started set value false
# Set flag as not stolen
data modify storage ctf:game team1.flag_stolen set value false
data modify storage ctf:game team2.flag_stolen set value false



# Back to Spawn
#execute in void run spreadplayers -1 -109 3 10 under 64 false @a[tag=ctf_player]

# Restore World Time
function ctf:setup/time/restore with storage ctf:game temp

# Hide Scoreboard
scoreboard objectives setdisplay sidebar

# Tally Player Count in Lobby
function ctf:lobby/display/count/main



# Give player old Inventory Back
execute as @a[tag=ctf_player] run function ctf:player/leave/leave