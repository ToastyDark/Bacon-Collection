# Announce to teammates
$execute if data entity @s data{gives_point:true} run function ctf:game/_bomb/success/msg/teammates with storage ctf:game team$(team_num)

# Announce to ops
$execute if data entity @s data{gives_point:true} run function ctf:game/_bomb/success/msg/ops with storage ctf:game team$(team_num)




# Other sounds
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute as @a run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.3 1.5 0.1


# Add to Points
$execute if data entity @s data{gives_point:true} run scoreboard players add ctf_team$(team_ops) ctf_points 1

# Mark bomb as not stolen
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0
data modify storage ctf:game bomb_planted set value false

# Add Capture Cooldown to Player
scoreboard players add @a[tag=ctf_has_bomb] ctf_flag_capture_cd 1


# Respawn
function ctf:player/respawn/respawn


# Replace Bomb
#function ctf:game/_bomb/place/place with storage ctf:game
function ctf:game/_bomb/place/timer/start with storage ctf:game