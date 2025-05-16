# Stop if actionbar cooldown is up
execute if entity @s[scores={actionbar_cd=1..}] run return fail

# Msg
title @s actionbar {"text":"Diffusing Bomb...","bold": true, "color": "gold"}