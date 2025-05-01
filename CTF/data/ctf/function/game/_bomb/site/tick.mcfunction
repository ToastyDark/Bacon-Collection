# TP Interact to Armadillo
execute if entity @s[tag=ctf_bombsite_team1] run function ctf:game/_bomb/site/tp/start with storage ctf:game team1
execute if entity @s[tag=ctf_bombsite_team2] run function ctf:game/_bomb/site/tp/start with storage ctf:game team2

# Stop Scute Dropping
execute as @n[type=armadillo,tag=ctf_bombsite,distance=..2] run data modify entity @s scute_time set value 100



# ---------- Run plant bomb check ----------
execute unless entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/plant/tick


# ---------- Run diffuse bomb check ----------
#execute if entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/diffuse/tick


# ---------- Time ran out and Bomb explodes ----------
execute if entity @s[tag=ctf_bomb_planted] if score $bomb_explode_timer value matches 0.. run function ctf:game/_bomb/success/timer/update





# Reset Clicks
data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0L}}
data merge entity @s {interaction:{player:[I;0,0,0,0],timestamp:0L}}