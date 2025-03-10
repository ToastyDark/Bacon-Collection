scoreboard players add $bomb_respawn_tick value 1

# Remove 1 decimal every 2 ticks
execute if score $bomb_respawn_tick value matches 2.. run scoreboard players remove $bomb_respawn_cd_d value 1
execute if score $bomb_respawn_tick value matches 2.. run scoreboard players reset $bomb_respawn_tick value

# Remove 1 second when decimal is 0
execute if score $bomb_respawn_cd value matches 0 if score $bomb_respawn_cd_d value matches 0 run function ctf:game/bomb/place/timer/end with storage ctf:game
execute if score $bomb_respawn_cd_d value matches ..0 run scoreboard players remove $bomb_respawn_cd value 1
execute if score $bomb_respawn_cd_d value matches ..0 run scoreboard players set $bomb_respawn_cd_d value 9


# Update Display
data modify entity @e[type=text_display,tag=ctf_bomb_timer,limit=1] text set value '["",{"score":{"name":"$bomb_respawn_cd","objective":"value"},"bold":true,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"$bomb_respawn_cd_d","objective":"value"},"bold":true,"color":"gold"},{"text":"s","bold":true,"color":"gold"}]'