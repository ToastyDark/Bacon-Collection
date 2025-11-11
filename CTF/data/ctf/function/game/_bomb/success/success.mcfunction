# Announce to teammates
title @a[tag=ctf_has_bomb] actionbar {"text":"You have delivered the bomb!","bold": true, "color": "green"}
$function ctf:game/flag/capture/sound with storage ctf:game team$(team_ops)
$execute as @a[tag=ctf_player,team=ctf_team$(team_ops),tag=!ctf_has_bomb] run title @s actionbar {"text":"A teammate delivered the bomb","bold": true, "color": "green"}
$execute at @s as @a[tag=ctf_player,team=ctf_team$(team_ops),distance=55..] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.2 1 0.1


# Announce to ops
$execute as @a[tag=ctf_player,team=ctf_team$(team_num)] run title @s actionbar {"text":"Your base was blown up","bold": true, "color": "red"}
$execute at @s as @a[tag=ctf_player,team=ctf_team$(team_num),distance=55..] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.2 1 0.1
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a

# Other Sound
execute as @a run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.3 1.5 0.1


# Add to Points
#$execute if data storage ctf:game {bomb_gives_point:true} run scoreboard players add ctf_team$(team_ops) ctf_points 1
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