# TP Interact to Armadillo
execute at @e[type=armadillo,tag=ctf_bombsite] run function ctf:game/_bomb/site/tp



# Run plant bomb check
execute unless entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/plant/tick




# Reset Clicks
#data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
#data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}