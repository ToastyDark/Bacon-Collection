# Stop if player is already in game
execute if entity @s[tag=ctf_player] run return run title @s actionbar {"text":"Use /trigger ctf.leave to leave the game","bold": true,"color": "red"}

# Actually TP
scoreboard players reset @s ctf.queue
scoreboard players reset @s ctf

# TP
function ctf:lobby/tp/tp