# Stop if already prevented
#execute if entity @s[tag=ctf_stop_fall_dmg_done] run return fail

# Give slowfalling before touching ground
#execute unless entity @s[tag=ctf_stop_fall_dmg_done] at @s if block ~ ~-2 ~ #minecraft:sold_block unless entity @s[nbt={OnGround:1b}] run effect give @s minecraft:slow_falling 1 1 true

# Stop if player is not on ground
execute unless entity @s[nbt={OnGround:1b}] run return fail
#execute unless entity @s[nbt={OnGround:1b}] run tag @s add ctf_stop_fall_dmg_done

# Replace Helmet
execute if entity @s[team=ctf_team1] run function ctf:player/kit/give/helmet/normal with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/kit/give/helmet/normal with storage ctf:game team2


# Remove Fall Damage Prevention
#execute if entity @s[tag=ctf_stop_fall_dmg_done] run effect clear @s slow_falling
#execute if entity @s[tag=ctf_stop_fall_dmg_done] run tag @s remove ctf_stop_fall_dmg
#execute if entity @s[tag=ctf_stop_fall_dmg_done] run tag @s remove ctf_stop_fall_dmg_done

# Add 2nd tag
#execute if entity @s[tag=ctf_stop_fall_dmg] run tag @s add ctf_stop_fall_dmg_done