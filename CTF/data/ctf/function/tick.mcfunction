# Run Triggers
function ctf:trigger/tick


# Player Tick
execute as @a run function ctf:player/tick

# Game Tick
execute if data storage ctf:game {started:true} run function ctf:game/tick with storage ctf:game

# Item
function ctf:item/tick


# Spectator Tick
function ctf:lobby/spectate/tick

# Lobby Tick
function ctf:lobby/tick