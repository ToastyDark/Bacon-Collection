execute if score @s museq.tick matches 24..40 run function museq:songs/_range.mmp/range.mmp_0
execute if score @s museq.tick matches 44..60 run function museq:songs/_range.mmp/range.mmp_1
execute if score @s museq.tick matches 64..80 run function museq:songs/_range.mmp/range.mmp_2
execute if score @s museq.tick matches 84..100 run function museq:songs/_range.mmp/range.mmp_3
execute if score @s museq.tick matches 104..120 run function museq:songs/_range.mmp/range.mmp_4
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
