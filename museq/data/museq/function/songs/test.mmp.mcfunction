execute if score @s museq.tick matches 0..44 run function museq:songs/_test.mmp/test.mmp_2931
execute if score @s museq.tick matches 48..80 run function museq:songs/_test.mmp/test.mmp_2944
execute if score @s museq.tick matches 84..126 run function museq:songs/_test.mmp/test.mmp_2957
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
