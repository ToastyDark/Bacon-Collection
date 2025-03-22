execute if score @s museq.tick matches 0..62 run function museq:songs/_test.mmp/test.mmp_4210
execute if score @s museq.tick matches 64..126 run function museq:songs/_test.mmp/test.mmp_4237
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
