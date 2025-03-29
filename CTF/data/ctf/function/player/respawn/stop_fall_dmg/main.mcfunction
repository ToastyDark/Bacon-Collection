# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail

# Remove Fall Damage Prevention
effect clear @s jump_boost
tag @s remove ctf_stop_fall_dmg