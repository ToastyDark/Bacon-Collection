# Reset Timer
scoreboard players reset @s ctf_respawn_cd

# Kill Armorstand
execute at @s as @e[type=area_effect_cloud,tag=ctf_freeze] if score @s id = @p id run kill @s

# Respawn
function ctf:player/respawn/respawn