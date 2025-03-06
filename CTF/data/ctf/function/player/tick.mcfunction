# Check Queue
function ctf:player/queue/check

# Crouch Timer
function ctf:player/crouch/tick

# Check if player died
execute if entity @s[scores={ctf_died=1..}] run function ctf:game/respawn/start

# Swap Kit
function ctf:player/kit/swap with storage ctf:game

# Check if player leaves spawn
execute if entity @s[tag=ctf_respawned] run function ctf:game/respawn/team_check with storage ctf:game

# Check if player breaks wool
function ctf:player/break_wool/check

# Check if player steals flag
execute if entity @s[scores={ctf_mined_wool_any=1..}] run function ctf:game/flag/steal