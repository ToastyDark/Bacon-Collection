scoreboard players add @n[type=interaction, tag=ctf_bombsite ] ctf_bomb_time 1

# If diffuse time reached, diffuse bomb
$execute if score @n[type=interaction, tag=ctf_bombsite ] ctf_bomb_time matches 10.. run function ctf:game/_bomb/diffuse/diffuse with storage ctf:game team$(team_num)