scoreboard players add @s ctf_join_time 1

#
execute if entity @s[scores={ctf_join_time=40..}] run function ctf:player/join/midgame/start