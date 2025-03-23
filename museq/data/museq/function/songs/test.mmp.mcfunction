execute if score @s museq.tick matches 0..32 run function museq:songs/_test.mmp/test.mmp_0
execute if score @s museq.tick matches 32..60 run function museq:songs/_test.mmp/test.mmp_1
execute if score @s museq.tick matches 60..88 run function museq:songs/_test.mmp/test.mmp_2
execute if score @s museq.tick matches 92..120 run function museq:songs/_test.mmp/test.mmp_3
execute if score @s museq.tick matches 120..126 run function museq:songs/_test.mmp/test.mmp_4
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
