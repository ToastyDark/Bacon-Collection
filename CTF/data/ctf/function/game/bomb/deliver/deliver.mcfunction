# Announce to teammates
title @s actionbar {"text":"You have delivered the bomb!","bold": true, "color": "green"}
$execute as @a[tag=ctf_player,team=ctf_team$(team_ops),tag=!ctf_has_bomb] run title @s actionbar {"text":"A teammate delivered the bomb","bold": true, "color": "green"}
$execute at @s as @a[tag=ctf_player,team=ctf_team$(team_ops)] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 20 1 0.1


# Announce to ops
$execute as @a[tag=ctf_player,team=ctf_team$(team_num)] run title @s actionbar {"text":"Your spawn was blown up","bold": true, "color": "red"}
$execute at @s as @a[tag=ctf_player,team=ctf_team$(team_num)] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 20 1 0.1
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a


# Add to Points
$scoreboard players add ctf_team$(team_ops) ctf_points 1

# Mark bomb as not stolen
data modify storage ctf:game bomb.stolen set value false
data modify storage ctf:game bomb.team_has set value 0

# Add Capture Cooldown to Player
scoreboard players add @s ctf_flag_capture_cd 1


# Respawn
function ctf:player/respawn/respawn


# Replace Bomb
function ctf:game/bomb/place/place with storage ctf:game