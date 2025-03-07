# Reset Player
function ctf:player/respawn/reset


# Add Respawned Tag
function ctf:player/respawn/add_tag

# TP
execute if entity @s[team=ctf_team1] run function ctf:setup/spawn/tp with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:setup/spawn/tp with storage ctf:game team2


# Get Kit
function ctf:player/kit/update with storage ctf:game