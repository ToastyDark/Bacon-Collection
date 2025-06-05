# Play Sound
execute as @a[tag=ctf_lobby] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1 0.3

# Mark as done
data modify storage ctf:temp loading_map set value false
data modify storage ctf:temp loading_map_done set value true


# Update Bossbar, Resume Timer
bossbar set ctf:lobby_timer name ["",{"text":"Map Loading Done!","bold":true,"color":"green"}]

# Either start removing timer or show bossbar again
execute if score $ctf_lobby_time value matches 1.. unless score $ctf_lobby_timer_paused value matches 1 run schedule function ctf:lobby/timer/remove 3s append
execute if score $ctf_lobby_time value matches 1.. if score $ctf_lobby_timer_paused value matches 1 run schedule function ctf:lobby/load_map/turn_off 3s append