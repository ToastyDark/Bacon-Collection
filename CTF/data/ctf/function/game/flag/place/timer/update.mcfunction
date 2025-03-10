$scoreboard players add $flag$(team_ops)_respawn_tick value 1

# Remove 1 decimal every 2 ticks
$execute if score $flag$(team_ops)_respawn_tick value matches 2.. run scoreboard players remove $flag$(team_ops)_respawn_cd_d value 1
$execute if score $flag$(team_ops)_respawn_tick value matches 2.. run scoreboard players reset $flag$(team_ops)_respawn_tick value

# Remove 1 second when decimal is 0
$execute if score $flag$(team_ops)_respawn_cd value matches 0 if score $flag$(team_ops)_respawn_cd_d value matches 0 run function ctf:game/flag/place/timer/end with storage ctf:game team$(team_num)
#$execute if score $flag$(team_ops)_respawn_cd_d value matches ..0 run scoreboard players remove $flag$(team_ops)_respawn_cd value 1
#$execute if score $flag$(team_ops)_respawn_cd_d value matches ..0 run scoreboard players set $flag$(team_ops)_respawn_cd_d value 9


# Update Display
$data modify entity @e[type=text_display,tag=ctf_flag$(team_ops)_timer,limit=1] text set value '["",{"score":{"name":"$flag$(team_ops)_respawn_cd","objective":"value"},"bold":true,"color":"gold"},{"text":".","bold":true,"color":"gold"},{"score":{"name":"$flag$(team_ops)_respawn_cd_d","objective":"value"},"bold":true,"color":"gold"},{"text":"s","bold":true,"color":"gold"}]'