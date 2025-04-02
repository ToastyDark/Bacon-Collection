# Bossbar Update
execute store result bossbar ctf:lobby_timer value run scoreboard players get $ctf_lobby_time value
bossbar set ctf:lobby_timer name ["",{"text":"CTF Starts in ","bold":true,"color":"gold"},{"score":{"name":"$ctf_lobby_time","objective":"value"},"bold":true,"color":"#BCA301"}]

# Playres
bossbar set ctf:lobby_timer players @a[tag=ctf_lobby]




# Title Countdown
execute if score $ctf_lobby_time value matches 1..5 run title @s times 5 10 5
execute if score $ctf_lobby_time value matches 1..5 run title @s title {"text":""}
execute if score $ctf_lobby_time value matches 5 run title @a subtitle {"text":"5","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 4 run title @a subtitle {"text":"4","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 3 run title @a subtitle {"text":"3","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 2 run title @a subtitle {"text":"2","bold":true,"color":"gold"}
execute if score $ctf_lobby_time value matches 1 run title @a subtitle {"text":"1","bold":true,"color":"gold"}