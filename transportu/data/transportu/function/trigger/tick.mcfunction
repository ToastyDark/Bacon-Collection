scoreboard players enable @s tp.all
execute if entity @s[scores={tp.all=1..}] run function transportu:trigger/give/all

scoreboard players enable @s tp.ctf
execute if entity @s[scores={tp.ctf=1..}] run function transportu:trigger/give/ctf

scoreboard players enable @s tp.clone
execute if entity @s[scores={tp.clone=1..}] run function transportu:trigger/give/clone