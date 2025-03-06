# Stop if game is already running
execute if data storage ctf:game {started:true} run return run title @s actionbar {"text": "A CTF Game is already in session!","bold": true,"color": "red"}

# Start Game
function ctf:game/start