execute if score @s museq.tick matches 24..52 run function museq:songs/_range.mmp/range.mmp_2913
execute if score @s museq.tick matches 56..84 run function museq:songs/_range.mmp/range.mmp_2920
execute if score @s museq.tick matches 88..120 run function museq:songs/_range.mmp/range.mmp_2927
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
