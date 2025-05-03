execute as @n[type=armadillo,tag=ctf_bombsite] run function ctf:game/_bomb/site/click/add_click

execute at @a if score @p id = @s id as @p run function ctf:game/_bomb/site/click/add_click


# Check team of player planting bomb
#execute at @a if score @p id = @s id if entity @p[tag=ctf_has_bomb] run function ctf:game/_bomb/site/click/plant


# Check if player diffusing bomb
#execute at @a if score @p id = @s id if entity @p[team=ctf_team1] at @s if entity @n[type=armadillo,team=ctf_team2] run function ctf:game/_bomb/diffuse/add_time with storage ctf:game team1