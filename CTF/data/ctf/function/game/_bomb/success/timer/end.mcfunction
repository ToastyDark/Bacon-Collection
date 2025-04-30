# Reset Values
scoreboard players reset $bomb_explode_timer value
scoreboard players reset $bomb_explode_timer_d value
scoreboard players reset $bomb_explode_timer_tick value

# Go Boom
execute as @e[type=armadillo,tag=ctf_bomb_planted,limit=1] if entity @s[tag=ctf_bombsite_team1] run function ctf:game/_bomb/success/success with storage ctf:game team1
execute as @e[type=armadillo,tag=ctf_bomb_planted,limit=1] if entity @s[tag=ctf_bombsite_team2] run function ctf:game/_bomb/success/success with storage ctf:game team2

# Kill Display
kill @e[type=text_display,tag=ctf_bombsite_timer]