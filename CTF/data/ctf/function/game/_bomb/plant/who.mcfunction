# ----------- Check if player is planting the bomb -----------
#$execute if entity @s[team=ctf_team$(team_ops)] run return run function ctf:game/_bomb/plant/add_time with storage ctf:game team$(team_ops)
#$execute if entity @s[team=ctf_team$(team_num)] run return run function ctf:game/_bomb/site/msg/bomb_own