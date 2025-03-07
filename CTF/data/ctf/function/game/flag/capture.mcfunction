# Announce to teammates
title @s actionbar {"text":"You have captured the flag!","bold": true, "color": "green"}
$execute as @a[tag=ctf_player,team=ctf_team$(team_num),tag=!ctf_has_flag] run title @s actionbar {"text":"You have captured the flag!","bold": true, "color": "green"}

# Announce to ops
$execute as @a[tag=ctf_player,team=!ctf_team$(team_num)] run title @s actionbar {"text":"Your flag was captured","bold": true, "color": "red"}

# Add to Points
$scoreboard players add ctf_team$(team_num) ctf_points 1


# Respawn
function ctf:player/respawn/respawn