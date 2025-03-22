execute if score @s museq.tick matches 24..28 run function museq:songs/_range.mmp/range.mmp_0
execute if score @s museq.tick matches 32..36 run function museq:songs/_range.mmp/range.mmp_1
execute if score @s museq.tick matches 40..44 run function museq:songs/_range.mmp/range.mmp_2
execute if score @s museq.tick matches 48..52 run function museq:songs/_range.mmp/range.mmp_3
execute if score @s museq.tick matches 56..60 run function museq:songs/_range.mmp/range.mmp_4
execute if score @s museq.tick matches 64..68 run function museq:songs/_range.mmp/range.mmp_5
execute if score @s museq.tick matches 72..76 run function museq:songs/_range.mmp/range.mmp_6
execute if score @s museq.tick matches 80..84 run function museq:songs/_range.mmp/range.mmp_7
execute if score @s museq.tick matches 88..92 run function museq:songs/_range.mmp/range.mmp_8
execute if score @s museq.tick matches 96..120 run function museq:songs/_range.mmp/range.mmp_9
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
