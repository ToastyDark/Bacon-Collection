scoreboard players add @n[type=interaction, tag=ctf_bombsite ] ctf_bomb_time 1

# If plant time reached, plant bomb
$execute if score ctf_bomb_time ctf_bomb_time matches 60.. as @n[type=armadillo, tag=ctf_bombsite ] at @s run function ctf:game/_bomb/plant/plant with storage ctf:game team$(team_num)