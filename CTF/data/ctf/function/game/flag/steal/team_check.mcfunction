$execute positioned $(flag_x) $(flag_y) $(flag_z) if entity @s[distance=..7] run return run title @s actionbar {"text":"You cannot steal your own flag","bold": true,"color": "red"}

function ctf:game/flag/steal/steal