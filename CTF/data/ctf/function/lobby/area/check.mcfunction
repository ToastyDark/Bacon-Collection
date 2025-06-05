# Check if player is in lobby
execute in void positioned 22 50 -135 if entity @s[tag=!ctf_lobby,dx=42,dy=50,dz=42] run function ctf:lobby/area/enter
execute in void positioned 22 50 -135 if entity @s[tag=ctf_lobby] unless entity @s[dx=42,dy=50,dz=42] run function ctf:lobby/area/leave