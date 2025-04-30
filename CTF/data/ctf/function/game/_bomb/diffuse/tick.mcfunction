# Update Timer
#execute as @e[type=text_display,tag=] if score @s ctf_bomb_time matches 0.. run function ctf:game/_bomb/place/timer/update


# Check if player is right clicking bombsite
execute if entity @s[tag=ctf_bombsite_team1] at @s on target run function ctf:game/_bomb/diffuse/who with storage ctf:game team1
execute if entity @s[tag=ctf_bombsite_team2] at @s on target run function ctf:game/_bomb/diffuse/who with storage ctf:game team2