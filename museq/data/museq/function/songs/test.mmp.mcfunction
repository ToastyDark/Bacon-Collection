execute if score @s museq.tick matches 0..126 run function museq:songs/_test.mmp/test.mmp_0
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
