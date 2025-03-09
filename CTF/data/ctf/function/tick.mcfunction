# Run Triggers
function ctf:trigger/tick

# Game Tick
execute if data storage ctf:game {started:true} run function ctf:game/tick

# Player Tick
execute as @a run function ctf:player/tick