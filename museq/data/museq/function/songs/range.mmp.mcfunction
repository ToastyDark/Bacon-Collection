execute if score @s museq.tick matches 24..84 run function museq:songs/_range.mmp/range.mmp_split_13_split_21_split_26_27
execute if score @s museq.tick matches 88..120 run function museq:songs/_range.mmp/range.mmp_split_13_split_21_split_26_28
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
