# Choose which players to count by whether the game has started
execute if data storage ctf:game {started:true} run function ctf:lobby/display/count/teams/main

# Count Queue
execute unless data storage ctf:game {started:true} run function ctf:lobby/display/count/queue/start