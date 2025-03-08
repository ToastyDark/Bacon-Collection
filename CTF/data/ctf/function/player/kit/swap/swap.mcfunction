# Play Swap Sound
execute at @s run playsound minecraft:entity.armadillo.scute_drop

# Swap
execute unless entity @s[scores={ctf_died=1..}] run scoreboard players add @s ctf_kit 1
execute if entity @s[scores={ctf_kit=3}] run scoreboard players set @s ctf_kit 1

# Store Kit Number and
execute if entity @s[team=ctf_team1] store result storage ctf:game team1.kit_num int 1 run scoreboard players get @s ctf_kit
execute if entity @s[team=ctf_team2] store result storage ctf:game team2.kit_num int 1 run scoreboard players get @s ctf_kit

# Give Items 
execute if entity @s[team=ctf_team1] run function ctf:player/kit/give/start with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/kit/give/start with storage ctf:game team2



# Notif
# Stop if player captured flag
execute if entity @s[scores={ctf_flag_capture_cd=1..}] run return fail

# Display
title @s actionbar ["",{"text":"Kit: ","bold": true,"color": "gold"},{"nbt":"Items[26].components.\"minecraft:custom_name\"","block":"65 -63 81","interpret":true}]
#execute unless entity @s[scores={ctf_flag_capture_cd=1..}] run title @s actionbar ["",{"text":"Kit: ","bold": true,"color": "gold"},{"text":"Blitz","bold":true,"color":"#086ec7"}]