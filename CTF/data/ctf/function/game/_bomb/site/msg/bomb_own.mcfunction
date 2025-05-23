scoreboard players add @s actionbar_cd 1
title @s actionbar {"text":"Don't harm your own Armadillo!","bold": true,"color":"red"}
execute if entity @s[scores={ctf_bombsite_click=2}] at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.7 1