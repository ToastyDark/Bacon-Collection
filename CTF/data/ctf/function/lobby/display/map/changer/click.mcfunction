# Check if clicked
execute on attacker if entity @s[scores={id=1..3}] at @s unless score $ctf_lobby_time value matches -1..15 run function ctf:lobby/display/map/changer/swap_up
execute on target if entity @s[scores={id=1..3}] at @s unless score $ctf_lobby_time value matches -1..15 run function ctf:lobby/display/map/changer/swap_up


#Reset Interaction after click
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}