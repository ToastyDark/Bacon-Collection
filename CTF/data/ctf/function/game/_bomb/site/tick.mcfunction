# Check if player right clicked a team 1 bombsite
execute as @e[type=armadillo,tag=ctf_bombsite_team1] at @s on target run function ctf:game/_bomb/site/click/who with storage ctf:game team1