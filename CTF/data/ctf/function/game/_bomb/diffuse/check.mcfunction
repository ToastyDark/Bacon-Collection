# Diffusing Bomb
$execute if entity @s[team=ctf_team$(team_ops)] run function ctf:game/_bomb/diffuse/msg/diffusing
$execute if entity @s[team=ctf_team$(team_ops)] as @e[type=armadillo,tag=ctf_bombsite,scores={ctf_bombsite_click=40..}] at @s run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team$(team_ops)
#EXP
$execute if entity @s[team=ctf_team$(team_ops)] if entity @s[type=player] run experience add @s 5 points
$execute if entity @s[team=ctf_team$(team_ops)] if entity @s[type=player,scores={ctf_bombsite_click=40..}] run experience set @s 0 points


# Wrong Team
$execute if entity @s[team=ctf_team$(team_num)] if entity @s[scores={ctf_bombsite_click=2}] unless entity @s[scores={ctf_bomb_plant_cd=1..}] run return run function ctf:game/_bomb/site/msg/defend