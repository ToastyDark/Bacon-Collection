data modify storage ctf:game voicechat set value open

title @a[tag=ctf_lobby] actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Opened Groups","bold":true,"color":"green"}]
title @s actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Opened Groups","bold":true,"color":"green"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 0.8