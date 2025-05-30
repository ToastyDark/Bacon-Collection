data modify storage ctf:settings random_teams set value false

scoreboard players add @a[tag=ctf_lobby] actionbar_cd 1
title @a[tag=ctf_lobby] actionbar ["",{"text":"Random Teams: ","color":"gold"},{"text":"Disabled","bold":true,"color":"red"}]
title @s actionbar ["",{"text":"Random Teams: ","color":"gold"},{"text":"Disabled","bold":true,"color":"red"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8