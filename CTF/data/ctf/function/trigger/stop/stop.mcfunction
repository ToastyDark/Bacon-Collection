# Stop if no game running
execute if data storage ctf:game {started:false} run return run title @s actionbar {"text": "No CTF games are active","bold": true,"color": "red"}

# Stop Game
function ctf:game/end