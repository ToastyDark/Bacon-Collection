# Remove Wool from groun
$kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:$(ops_flag_color)_wool"}}]

# Set Player as Flag Stolen
$function ctf:game/flag/player/set with storage ctf:game team$(team_num)

# Set what flag has
$tag @s add ctf_has_flag_team$(team_ops)


# Set Temp Team Data
function ctf:game/flag/set_temp_team

# Set Stolen
execute if entity @s[team=ctf_team1] run schedule function ctf:game/flag/steal/delay/data_set_team1 2t append
execute if entity @s[team=ctf_team2] run schedule function ctf:game/flag/steal/delay/data_set_team2 2t append

# Stolen Commands
execute if entity @s[team=ctf_team1] run function ctf:game/flag/stolen with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:game/flag/stolen with storage ctf:game team2


# Msg
title @s actionbar {"text":"You have stolen the flag!","bold":true,"color":"green"}