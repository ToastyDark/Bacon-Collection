execute if score @s museq.tick matches 0..14 run function museq:songs/_whatever.mmp/whatever.mmp_4264
execute if score @s museq.tick matches 18..30 run function museq:songs/_whatever.mmp/whatever.mmp_4269
execute if score @s museq.tick matches 32.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
