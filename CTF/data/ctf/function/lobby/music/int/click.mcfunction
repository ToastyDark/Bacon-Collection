# Check if clicked
execute on attacker at @s run function ctf:lobby/music/toggle/run
execute on target at @s run function ctf:lobby/music/toggle/run


#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}