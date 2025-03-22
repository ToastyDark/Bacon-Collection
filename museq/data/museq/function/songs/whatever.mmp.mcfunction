execute if score @s museq.tick matches 0..4 run function museq:songs/_whatever.mmp/whatever.mmp_2970
execute if score @s museq.tick matches 8..18 run function museq:songs/_whatever.mmp/whatever.mmp_2971
execute if score @s museq.tick matches 22..30 run function museq:songs/_whatever.mmp/whatever.mmp_2972
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
