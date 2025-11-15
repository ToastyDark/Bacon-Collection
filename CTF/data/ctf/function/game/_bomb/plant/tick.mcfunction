#Check if player is right clicking bombsite
execute if data entity @s data{team_num:1} at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p run function ctf:game/_bomb/plant/check with storage ctf:game team1
execute if data entity @s data{team_num:2} at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p run function ctf:game/_bomb/plant/check with storage ctf:game team2

# Check if neutral bombsite
execute unless data entity @s data{team_num:1} unless data entity @s data{team_num:2} at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p if entity @s[team=ctf_team1] run function ctf:game/_bomb/plant/neutral with storage ctf:game team1
execute unless data entity @s data{team_num:1} unless data entity @s data{team_num:2} at @a if score @s ctf_bombsite_click = @p ctf_bombsite_click as @p if entity @s[team=ctf_team2] run function ctf:game/_bomb/plant/neutral with storage ctf:game team2

# Check if player is still planting bomb
#