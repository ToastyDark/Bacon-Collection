# Check if player queued
execute if data storage ctf:game {started:false} run function ctf:lobby/queue/check

# Check if player joins mid-game
execute if data storage ctf:game {started:true} run function ctf:player/join/midgame/check