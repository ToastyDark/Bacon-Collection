# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail


# Remove Fall Damage Prevention
execute if entity @s[tag=ctf_stop_fall_dmg_done] run effect clear @s jump_boost
execute if entity @s[tag=ctf_stop_fall_dmg_done] run tag @s remove ctf_stop_fall_dmg
execute if entity @s[tag=ctf_stop_fall_dmg_done] run tag @s remove ctf_stop_fall_dmg_done

# Add 2nd tag
execute if entity @s[tag=ctf_stop_fall_dmg] run tag @s add ctf_stop_fall_dmg_done