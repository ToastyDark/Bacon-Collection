# ---------- Process Bombsite being Clicked ----------
execute if entity @s[scores={ctf_bombsite_click=1..}] run function ctf:game/_bomb/site/click/tick



# ---------- Run plant bomb check ----------
#execute unless entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/plant/tick


# ---------- Run diffuse bomb check ----------
#execute if entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/diffuse/tick


# ---------- Time ran out and Bomb explodes ----------
execute if entity @s[tag=ctf_bomb_planted] if score $bomb_explode_timer value matches 0.. run function ctf:game/_bomb/success/timer/update



# Flashing Bomb
execute if entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/site/flash/tick







# ---------- Other Things to Protect THem ----------
# Stop Scute Dropping
execute as @s run data modify entity @s scute_time set value 100


# Stop from being moved
execute if data entity @s data{team_num:1} run function ctf:game/_bomb/site/tp/start with storage ctf:game team1
execute if data entity @s data{team_num:2} run function ctf:game/_bomb/site/tp/start with storage ctf:game team1