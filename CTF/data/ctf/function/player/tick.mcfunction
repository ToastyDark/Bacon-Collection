# ------------------ Lobby ------------------
# Check if player is in lobby
function ctf:lobby/area/check


# Check if player is on lobby platforms
function ctf:lobby/platform/player


# Check if fall from lobby island
function ctf:lobby/fall_check/tick

# Commands for changing kits
execute if entity @s[tag=ctf_lobby] run function ctf:lobby/edit_kit/tick_player_tick


# ---------------- Base Game ----------------
# Check if player leaves game
execute if entity @s[scores={ctf_leave_game=1..}] run function ctf:player/join/rejoined_main

# Crouch Timer
function ctf:player/crouch/tick

# Check if player died
execute if entity @s[scores={ctf_died=1..}] at @s run function ctf:player/respawn/start
execute if entity @s[scores={ctf_respawn_cd=0..}] at @s run function ctf:player/respawn/timer/main
# Set Player Spawn
function ctf:player/respawn/timer/set_spawn

# Swap Kit
execute if entity @s[scores={ctf_crouch_time=1},nbt={OnGround:true}] run function ctf:player/kit/swap/get_map with storage ctf:game

# ---------------- Objective Stuff ----------------
# Check if player breaks wool
function ctf:player/break_wool/check

# Check if player takes bomb
execute if entity @s[scores={ctf_mined_tnt=1..}] run function ctf:game/_bomb/take/start

# Check if player steals flag
execute if entity @s[scores={ctf_mined_wool_any=1..}] run function ctf:game/flag/steal/start

# Player Has Flag
execute if entity @s[tag=ctf_has_flag] run function ctf:player/flag/tick

# Player Has Bomb
execute if entity @s[tag=ctf_has_bomb] run function ctf:player/bomb/tick

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

# Kit Swap Cooldown
execute if entity @s[scores={ctf_kit_swap_cd=1..}] run function ctf:player/kit/cooldown/update

# Feed player
execute if entity @s[scores={ctf_hunger=..16}] run effect give @s minecraft:saturation 1 1 true

# Stop Fall Damage
execute if entity @s[tag=ctf_stop_fall_dmg] run function ctf:player/respawn/stop_fall_dmg/main


# Right Click Bombsite
execute if entity @s[scores={rclick=1}] at @s run function ctf:player/click/click

# Bomb Planting Cooldown Timer
execute if entity @s[scores={ctf_bomb_plant_cd=1..}] run function ctf:player/timer/plant_cd

# Freeze player after respawn
execute if entity @s[scores={ctf_respawn_freeze_cd=1..}] run function ctf:player/respawn/freeze/main


# Run Map Creator
execute if entity @s[scores={ctf_create_step=1..}] run function ctf:create/get_player_data


# Prevent player from leaving voice chat if their VC is enabled
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:open} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2
#
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team1] run function voicechat:ctf/join/team_1
execute if data storage ctf:game {voicechat:closed} if entity @s[tag=ctf_vc,team=ctf_team2] run function voicechat:ctf/join/team_2