execute if score @s museq.tick matches 0..24 run function museq:songs/_test.mmp/test.mmp_0
execute if score @s museq.tick matches 28..52 run function museq:songs/_test.mmp/test.mmp_6
execute if score @s museq.tick matches 52..64 run function museq:songs/_test.mmp/test.mmp_12
execute if score @s museq.tick matches 72..96 run function museq:songs/_test.mmp/test.mmp_18
execute if score @s museq.tick matches 96..126 run function museq:songs/_test.mmp/test.mmp_24
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
