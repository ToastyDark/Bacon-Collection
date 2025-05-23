# Check if player is in lobby
execute in void positioned 22 50 -135 if entity @s[tag=!ctf_lobby,dx=38,dy=50,dz=38] run function ctf:lobby/area/enter
execute in void positioned 22 50 -135 if entity @s[tag=ctf_lobby] unless entity @s[dx=38,dy=50,dz=38] run function ctf:lobby/area/leave