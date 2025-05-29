# TP
execute if entity @s[tag=ctf_door_crushed_red] run tp @s -647 80.5 -232 -180 30
execute if entity @s[tag=ctf_door_crushed_blue] run tp @s -647 80.5 -128 0 30


# Remove Door Tags
tag @s remove ctf_door_crushed_red
tag @s remove ctf_door_crushed_blue