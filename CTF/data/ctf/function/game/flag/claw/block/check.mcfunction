# Check if it's a flag
$execute if entity @s[x=$(flag_x),y=$(flag_y),z=$(flag_z),dx=0,dy=0,dz=0] if block ~ ~ ~ $(flag_color)_wool run return run function ctf:game/flag/claw/modify/can_break_wool

# Now check if a bomb
function ctf:game/flag/claw/block/check_if_bomb with storage ctf:game