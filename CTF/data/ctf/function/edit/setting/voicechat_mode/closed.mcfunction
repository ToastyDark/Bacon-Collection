data modify storage ctf:game voicechat set value closed

# Message
title @a[tag=ctf_lobby] actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Closed Groups","bold":true,"color":"green"}]
title @s actionbar ["",{"text":"CTF Voice Chat: ","color":"gold"},{"text":"Closed Groups","bold":true,"color":"green"}]

# Sound
execute unless entity @s[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 1.3
execute as @a[tag=ctf_lobby] at @s run playsound entity.item.pickup master @s ~ ~ ~ 1 1.3