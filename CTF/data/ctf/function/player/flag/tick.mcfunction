# Add to timer
function ctf:game/flag/player/timer

# Spawn Fireworks
execute if entity @s[team=ctf_team1] run function ctf:game/flag/player/firework with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:game/flag/player/firework with storage ctf:game team2