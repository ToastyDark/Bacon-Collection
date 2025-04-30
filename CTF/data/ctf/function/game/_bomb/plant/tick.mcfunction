#Check if player is right clicking bombsite
execute if entity @s[tag=ctf_bombsite_team1] at @s on target run function ctf:game/_bomb/plant/who with storage ctf:game team1
execute if entity @s[tag=ctf_bombsite_team2] at @s on target run function ctf:game/_bomb/plant/who with storage ctf:game team2





# Check if player is still planting bomb
#execute if entity @s[scores={ctf_bomb_time=1..}] run function ctf:game/_bomb/plant/compare_time