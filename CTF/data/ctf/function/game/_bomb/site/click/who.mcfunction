# ----------- Check if player is planting the bomb -----------
$execute if entity @s[tag=ctf_has_bomb_team$(team_num)] run return run function ctf:game/_bomb/site/msg/bomb_own
$execute if entity @s[tag=ctf_has_bomb_team$(team_ops)] run return run function ctf:game/_bomb/plant/add_time