# Reset Timer
scoreboard players reset @s ctf_respawn_cd

# Kill Armorstand
execute at @s as @e[type=armor_stand,tag=ctf_freeze] if score @s id = @p id run kill @s

# Respawn
function ctf:player/respawn/respawn