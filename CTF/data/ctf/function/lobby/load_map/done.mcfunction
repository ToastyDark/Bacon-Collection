# Play Sound
execute as @a[tag=ctf_lobby] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1 0.3

# Mark as done
data modify storage ctf:temp loading_map set value false
data modify storage ctf:temp loading_map_done set value true


# Update Bossbar, Resume Timer
bossbar set ctf:lobby_timer name ["",{"text":"Map Loading Done!","bold":true,"color":"green"}]
execute if score $ctf_lobby_time value matches 1.. run schedule function ctf:lobby/timer/remove 2s replace 
