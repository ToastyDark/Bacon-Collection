# Stop if Crouch is up
execute if entity @s[scores={ctf_crouch_time=1..}] run return fail

# Msg
execute unless entity @s[scores={actionbar_cd=1..}] run title @s actionbar ["",{"text":"Team Selection: ","bold": true,"color": "gray"},{"text":"Random","bold":true,"color":"gold"}]