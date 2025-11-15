# Stop if still on the flag
$execute positioned $(flag_x) $(flag_y) $(flag_z) if entity @s[distance=..2] run return fail

# Stop if still on bomb
function ctf:game/flag/claw/block/check_if_still_bomb with storage ctf:game