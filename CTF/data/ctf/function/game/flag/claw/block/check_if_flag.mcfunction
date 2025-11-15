# Check if it's a flag
#$execute if entity @s[x=$(flag_x),y=$(flag_y),z=$(flag_z),dx=0,dy=0,dz=0] run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
$execute positioned $(flag_x).5 $(flag_y).5 $(flag_z).5 if entity @s[distance=..1] run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
$execute positioned $(flag_x).5 $(flag_y).5 $(flag_z).5 if entity @s[distance=..1] if block ~ ~ ~ $(flag_color)_wool as @a if score @s id = @n[tag=ctf_flag_claw_ray] id run return run function ctf:game/flag/claw/modify/can_break_wool

# Now check if a bomb
function ctf:game/flag/claw/block/check_if_bomb with storage ctf:game


# If neither, cannot break
#playsound entity.experience_orb.pickup master ToastyDark ~ ~ ~ 0.3
function ctf:game/flag/claw/modify/reset