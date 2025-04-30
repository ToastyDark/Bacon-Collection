# Reset Values
scoreboard players reset $bomb_explode_timer value
scoreboard players reset $bomb_explode_timer_d value
scoreboard players reset $bomb_explode_timer_tick value

# Go Boom
function ctf:game/_bomb/success/success

# Kill Display
kill @e[type=text_display,tag=ctf_bombsite_timer]