# Stop Game
data modify storage ctf:game started set value false
# Set flag as not stolen
data modify storage ctf:game team1.flag_stolen set value false
data modify storage ctf:game team2.flag_stolen set value false

# Set bomb as not stolen
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value none
data modify storage ctf:game bomb_planted set value false



# Remove Bombsites
execute as @e[type=armadillo,tag=ctf_bombsite] at @s run function ctf:game/_bomb/site/kill


# Restore World Time
function ctf:setup/time/restore with storage ctf:game temp

# Hide Scoreboard
scoreboard objectives setdisplay sidebar

# Remove Voicechat Groups
function voicechat:ctf/end


# Spread out players back to spawn
schedule function ctf:lobby/tp/spread 2t replace

# Give player old Inventory Back
schedule function ctf:player/leave/end_scheduled 2t replace


# Reset Map
#function ctf:map/reset with storage ctf:game