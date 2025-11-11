# Reset Score
execute as @n[type=interaction] run scoreboard players reset $bomb_c
execute as @n[type=interaction] run scoreboard players reset $bomb_explode_timer
execute as @n[type=interaction] run scoreboard players reset $bomb_explode_timer_d
execute as @n[type=interaction] run scoreboard players reset $bomb_explode_timer_tick


# Remove TNT
execute on passengers run kill @s

# Remove Tags
tag @s remove ctf_bomb_planted


# Reset Position
$execute if data entity @s data{bombsite_num:1} run function ctf:game/_bomb/site/reset_pos with storage ctf:game team$(team_num).bsite.1
$execute if data entity @s data{bombsite_num:2} run function ctf:game/_bomb/site/reset_pos with storage ctf:game team$(team_num).bsite.2
$execute if data entity @s data{bombsite_num:3} run function ctf:game/_bomb/site/reset_pos with storage ctf:game team$(team_num).bsite.3