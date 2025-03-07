# Check Queue
function ctf:player/queue/check

# Crouch Timer
function ctf:player/crouch/tick

# Check if player died
execute if entity @s[scores={ctf_died=1..}] at @s run function ctf:player/respawn/start

# Swap Kit
function ctf:player/kit/swap with storage ctf:game


# Check if player breaks wool
function ctf:player/break_wool/check

# Check if player steals flag
execute if entity @s[scores={ctf_mined_wool_any=1..}] run function ctf:game/flag/steal/start

# Flag Tick
execute if entity @s[tag=ctf_has_flag] run function ctf:player/flag/tick

# ------------ Spawn Area Stuff ------------\
# Check if player leaves spawn
execute if entity @s[tag=ctf_respawned] run function ctf:player/respawn/team_check with storage ctf:game

# Check if player within a spawn
function ctf:game/spawn/check_players with storage ctf:game team1
function ctf:game/spawn/check_players with storage ctf:game team2

# Wrong Spawn
execute if entity @s[scores={ctf_in_ops_spawn=1..}] run function ctf:game/spawn/wrong_spawn/check