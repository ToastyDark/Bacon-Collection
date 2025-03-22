execute if score @s museq.tick matches 0..12 run function museq:songs/_test.mmp/test.mmp_0
execute if score @s museq.tick matches 12..24 run function museq:songs/_test.mmp/test.mmp_1
execute if score @s museq.tick matches 28..40 run function museq:songs/_test.mmp/test.mmp_2
execute if score @s museq.tick matches 44..52 run function museq:songs/_test.mmp/test.mmp_3
execute if score @s museq.tick matches 52..60 run function museq:songs/_test.mmp/test.mmp_4
execute if score @s museq.tick matches 60..64 run function museq:songs/_test.mmp/test.mmp_5
execute if score @s museq.tick matches 72..80 run function museq:songs/_test.mmp/test.mmp_6
execute if score @s museq.tick matches 84..96 run function museq:songs/_test.mmp/test.mmp_7
execute if score @s museq.tick matches 96..108 run function museq:songs/_test.mmp/test.mmp_8
execute if score @s museq.tick matches 112..126 run function museq:songs/_test.mmp/test.mmp_9
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
