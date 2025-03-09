# Remove Wool from groun
$kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:$(flag_color)_wool"}}]

# Replace Flag
$function ctf:game/flag/place/team$(team_num) with storage ctf:game

# Msg
title @s actionbar {"text":"You cannot steal your own flag","bold": true,"color": "red"}