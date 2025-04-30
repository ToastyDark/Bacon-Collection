# Team 1 Checks
execute if entity @s[tag=ctf_bombsite_team1,tag=ctf_bombsite_1] if entity @n[type=interaction,tag=ctf_bombsite_team1,tag=ctf_bombsite_1] run tp @n[type=interaction] @s
execute if entity @s[tag=ctf_bombsite_team1,tag=ctf_bombsite_2] if entity @n[type=interaction,tag=ctf_bombsite_team1,tag=ctf_bombsite_2] run tp @n[type=interaction] @s
execute if entity @s[tag=ctf_bombsite_team1,tag=ctf_bombsite_2] if entity @n[type=interaction,tag=ctf_bombsite_team1,tag=ctf_bombsite_3] run tp @n[type=interaction] @s

# Team 2 Checks
execute if entity @s[tag=ctf_bombsite_team2,tag=ctf_bombsite_1] if entity @n[type=interaction,tag=ctf_bombsite_team2,tag=ctf_bombsite_1] run tp @n[type=interaction] @s
execute if entity @s[tag=ctf_bombsite_team2,tag=ctf_bombsite_2] if entity @n[type=interaction,tag=ctf_bombsite_team2,tag=ctf_bombsite_2] run tp @n[type=interaction] @s
execute if entity @s[tag=ctf_bombsite_team2,tag=ctf_bombsite_2] if entity @n[type=interaction,tag=ctf_bombsite_team2,tag=ctf_bombsite_3] run tp @n[type=interaction] @s