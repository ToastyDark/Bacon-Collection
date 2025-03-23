execute if score @s museq.tick matches 24..120 run function museq:songs/_range.mmp/range.mmp_0
execute if score @s museq.tick matches 124.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
