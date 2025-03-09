# Check if player leaves game
execute if entity @s[scores={ctf_leave_game=1..}] run function ctf:player/join/rejoined

# Check Queue
function ctf:player/queue/check

# Crouch Timer
function ctf:player/crouch/tick

# Check if player died
execute if entity @s[scores={ctf_died=1..}] at @s run function ctf:player/respawn/start

# Swap Kit
execute as @a[scores={ctf_crouch_time=1}] run function ctf:player/kit/swap/check_team with storage ctf:game


# Check if player breaks wool
function ctf:player/break_wool/check

# Check if player takes bomb
execute if entity @s[scores={ctf_mined_tnt=1..}] run function ctf:game/bomb/take/start

# Check if player steals flag
execute if entity @s[scores={ctf_mined_wool_any=1..}] run function ctf:game/flag/steal/start

# Flag Tick
execute if entity @s[tag=ctf_has_flag] run function ctf:player/flag/tick

# Stop players from dropping items
execute at @s run function ctf:player/no_drop/start

# ------------ Spawn Area Stuff ------------
# Check if player leaves spawn
execute if entity @s[tag=ctf_respawned] run function ctf:player/respawn/team_check with storage ctf:game

# Check if player within a spawn
function ctf:game/spawn/check_players with storage ctf:game team1
function ctf:game/spawn/check_players with storage ctf:game team2

# Wrong Spawn
execute if entity @s[scores={ctf_in_ops_spawn=1..}] run function ctf:game/spawn/wrong_spawn/check

# Add to Capture Flag Cooldown
execute if entity @s[scores={ctf_flag_capture_cd=1..}] run function ctf:game/flag/capture/cooldown