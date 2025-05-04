#Check if player is right clicking bombsite
execute if entity @s[tag=ctf_bombsite_team1] at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p run function ctf:game/_bomb/plant/check with storage ctf:game team1
execute if entity @s[tag=ctf_bombsite_team2] at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p run function ctf:game/_bomb/plant/check with storage ctf:game team2



# Check if player is still planting bomb
#