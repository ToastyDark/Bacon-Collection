scoreboard players reset @s ctf.leave

# Stop if player not in game
execute unless entity @s[tag=ctf_player] run return run title @s actionbar {"text":"You're not in a CTF Game","bold": true,"color": "red"}

# Leave
function ctf:player/leave/leave
execute in void run tp @s -1 64 -110