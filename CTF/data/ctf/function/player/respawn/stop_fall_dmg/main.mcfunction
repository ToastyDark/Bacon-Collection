# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail

# Replace Helmet
execute if entity @s[team=ctf_team1] run function ctf:player/kit/give/helmet/normal with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/kit/give/helmet/normal with storage ctf:game team2

# Remove Tag
tag @s remove ctf_stop_fall_dmg