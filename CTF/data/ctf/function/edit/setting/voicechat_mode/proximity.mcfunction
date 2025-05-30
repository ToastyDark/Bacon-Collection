data modify storage ctf:game voicechat set value proximity

scoreboard players add @a[tag=ctf_lobby] actionbar_cd 1
title @a[tag=ctf_lobby] actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Proximity Only","bold":true,"color":"green"}]
title @s actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Proximity Only","bold":true,"color":"green"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8