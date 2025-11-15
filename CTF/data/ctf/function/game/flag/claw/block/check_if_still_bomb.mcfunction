# Bomb Check
$execute positioned $(bomb_x) $(bomb_y) $(bomb_z) if entity @s[distance=..2] run return fail

# Reset Item
execute as @a if score @s id = @n[tag=ctf_flag_claw_ray] id run return run function ctf:game/flag/claw/modify/reset