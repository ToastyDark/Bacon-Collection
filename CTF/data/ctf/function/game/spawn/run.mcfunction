# Check if player just respawned
execute if entity @s[tag=ctf_respawned] run function ctf:player/respawn/remove_tag