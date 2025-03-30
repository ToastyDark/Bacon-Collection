# Announce to teammates
$execute as @a[tag=ctf_player,team=ctf_team$(team_num)] run function ctf:game/flag/capture/team_msg with storage ctf:game team$(team_num)

# Announce to ops
$execute as @a[tag=ctf_player,team=ctf_team$(team_ops)] at @s run function ctf:game/flag/capture/op_msg


# Add to Points
$scoreboard players add ctf_team$(team_num) ctf_points 1

# Mark flag as not stolen
$data modify storage ctf:game team$(team_ops).flag_stolen set value false

# Add Capture Cooldown to Player
scoreboard players add @s ctf_flag_capture_cd 1


# Respawn
function ctf:player/respawn/respawn

# Tell player they captured flag
title @s actionbar {"text":"You have captured the flag!","bold": true, "color": "green"}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3 1


# Replace Flag
$function ctf:game/flag/place/timer/start with storage ctf:game team$(team_num)