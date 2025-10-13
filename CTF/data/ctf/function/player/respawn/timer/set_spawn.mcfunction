# Stop if player is not ctf player
execute if entity @s[tag=!ctf_player] run return fail

# Stop if player has died
execute if entity @s[scores={ctf_died=1..}] run return fail

# Stop if player's respawn timer is active
execute if entity @s[scores={ctf_respawn_cd=0..}] run return fail

# Set Spawn at player's position
execute at @s run spawnpoint @s ~ ~ ~ ~ ~