data modify storage ctf:settings random_teams set value true

scoreboard players add @a[tag=ctf_lobby] actionbar_cd 1
title @a[tag=ctf_lobby] actionbar ["",{"text":"Random Teams: ","color":"gold"},{"text":"Enabled","bold":true,"color":"green"}]
title @s actionbar ["",{"text":"Random Teams: ","color":"gold"},{"text":"Enabled","bold":true,"color":"green"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8