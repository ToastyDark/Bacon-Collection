# ----------- Check if player is planting the bomb -----------
$execute if entity @s[team=ctf_team$(team_ops)] run return run function ctf:game/_bomb/diffuse/add_time with storage ctf:game team$(team_num)
$execute if entity @s[team=ctf_team$(team_num)] run return run function ctf:game/_bomb/site/msg/defend