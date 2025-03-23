execute if score @s museq.tick matches 0..26 run function museq:songs/_whatever.mmp/whatever.mmp_split_5_split_9_10
execute if score @s museq.tick matches 28..30 run function museq:songs/_whatever.mmp/whatever.mmp_split_5_split_9_11
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
