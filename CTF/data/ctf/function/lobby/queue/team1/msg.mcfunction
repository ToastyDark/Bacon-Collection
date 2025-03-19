# Stop if Crouch is up
execute if entity @s[scores={ctf_crouch_time=1..}] run return fail

# Msg
title @s actionbar ["",{"text":"Team Selection: ","bold": true,"color": "gray"},{"text":"Red","bold":true,"color":"red"}]