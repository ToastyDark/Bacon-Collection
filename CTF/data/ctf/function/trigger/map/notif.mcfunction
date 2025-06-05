# Map changing sound and msg
#title @s actionbar ["",{"text":"Map Changed: ","bold": true,"color": "gray"},{"nbt":"display_name","storage":"ctf:game","interpret":true}]
#execute at @s[tag=!ctf_lobby] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.6 1
# Msg Everyone
title @a[tag=ctf_lobby] actionbar ["",{"text":"Map Changed: ","bold": true,"color": "gray"},{"nbt":"display_name","storage":"ctf:game","interpret":true}]
execute as @a[tag=ctf_lobby] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.6 1