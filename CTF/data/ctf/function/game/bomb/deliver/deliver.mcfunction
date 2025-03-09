# Announce to teammates
title @s actionbar {"text":"You have delivered the bomb!","bold": true, "color": "green"}
$execute as @a[tag=ctf_player,team=ctf_team$(team_num),tag=!ctf_has_flag] run title @s actionbar {"text":"A teammate delivered the bomb","bold": true, "color": "green"}

# Announce to ops
$execute as @a[tag=ctf_player,team=!ctf_team$(team_ops)] run title @s actionbar {"text":"Your spawn was blown up","bold": true, "color": "red"}

# Add to Points
$scoreboard players add ctf_team$(team_num) ctf_points 1

# Mark bomb as not stolen
data modify storage ctf:game bomb.stolen set value false

# Add Capture Cooldown to Player
scoreboard players add @s ctf_flag_capture_cd 1


# Respawn
function ctf:player/respawn/respawn


# Replace Bomb
function ctf:game/bomb/place/place with storage ctf:game