# Reset Values
scoreboard players reset $bomb_respawn_cd value
scoreboard players reset $bomb_respawn_cd_d value
scoreboard players reset $bomb_respawn_cd_tick value

# Place Bomb
function ctf:game/_bomb/place/replace with storage ctf:game

# Kill Display
kill @e[type=text_display,tag=ctf_bomb_timer]