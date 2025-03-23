execute if score @s museq.tick matches 0..96 run function museq:songs/_test.mmp/test.mmp_split_22_split_34_split_41_split_45_46
execute if score @s museq.tick matches 96..126 run function museq:songs/_test.mmp/test.mmp_split_22_split_34_split_41_split_45_47
execute if score @s museq.tick matches 128.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
