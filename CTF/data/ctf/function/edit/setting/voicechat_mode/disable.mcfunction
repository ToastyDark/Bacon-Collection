data modify storage ctf:game voicechat set value false

title @a[tag=ctf_lobby] actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Disabled","bold":true,"color":"red"}]
title @s actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Disabled","bold":true,"color":"red"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 1.3
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 1.3