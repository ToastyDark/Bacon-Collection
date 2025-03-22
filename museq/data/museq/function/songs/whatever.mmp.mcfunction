execute if score @s museq.tick matches 0..2 run function museq:songs/_whatever.mmp/whatever.mmp_0
execute if score @s museq.tick matches 4..8 run function museq:songs/_whatever.mmp/whatever.mmp_1
execute if score @s museq.tick matches 14..18 run function museq:songs/_whatever.mmp/whatever.mmp_2
execute if score @s museq.tick matches 22..26 run function museq:songs/_whatever.mmp/whatever.mmp_3
execute if score @s museq.tick matches 28..30 run function museq:songs/_whatever.mmp/whatever.mmp_4
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
