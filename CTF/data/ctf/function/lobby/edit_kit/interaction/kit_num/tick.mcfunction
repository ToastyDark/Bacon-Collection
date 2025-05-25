# Cycle Up and Down kit num
execute on attacker run function ctf:lobby/edit_kit/interaction/kit_num/cycle_up
execute on target run function ctf:lobby/edit_kit/interaction/kit_num/cycle_down

# Reset Ints
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}