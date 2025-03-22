execute if score @s museq.tick matches 24..68 run function museq:songs/_range.mmp/range.mmp_4180
execute if score @s museq.tick matches 72..120 run function museq:songs/_range.mmp/range.mmp_4195
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
