# ------------------ Check if player dropped bomb -------------------
# Old
execute if data storage ctf:game {bomb_method:old} if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:1} unless entity @a[tag=ctf_has_bomb_team1] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team1
execute if data storage ctf:game {bomb_method:old} if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:2} unless entity @a[tag=ctf_has_bomb_team2] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team2

# New
execute if data storage ctf:game {bomb_method:new} if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:1} unless entity @a[tag=ctf_has_bomb_team1] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team1
execute if data storage ctf:game {bomb_method:new} if data storage ctf:game bomb{stolen:true} if data storage ctf:game bomb{team_has:2} unless entity @a[tag=ctf_has_bomb_team2] run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team2



# ------------------ Check Bombsite tick ------------------
execute if data storage ctf:game {bomb_method:new} as @e[type=armadillo,tag=ctf_bombsite] at @s run function ctf:game/_bomb/site/tick
execute if data storage ctf:game {bomb_method:new} run function ctf:game/_bomb/site/click/check_reset
