# Announce to teammates
title @s actionbar {"text":"You have captured the flag!","bold": true, "color": "green"}
$execute as @a[tag=ctf_player,team=ctf_team$(team_ops),tag=!ctf_has_flag] run title @s actionbar {"text":"You have captured the flag!","bold": true, "color": "green"}

# Announce to ops
$execute as @a[tag=ctf_player,team=!ctf_team$(team_num)] run title @s actionbar {"text":"Your flag was captured","bold": true, "color": "red"}

# Add to Points
$scoreboard players add ctf_team$(team_num) ctf_points 1

# Mark flag as not stolen
$data modify storage ctf:game team$(team_ops).flag_stolen set value false

# Add Capture Cooldown to Player
scoreboard players add @s ctf_flag_capture_cd 1


# Respawn
function ctf:player/respawn/respawn


# Replace Flag
#$function ctf:game/flag/place/team$(team_ops) with storage ctf:game
$function ctf:game/flag/place/timer/start with storage ctf:game team$(team_num)