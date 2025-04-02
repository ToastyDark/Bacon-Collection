execute if score $ctf_lobby_time value matches 1.. run bossbar set ctf:lobby_timer visible true
execute if score $ctf_lobby_time value matches ..0 run bossbar set ctf:lobby_timer visible false