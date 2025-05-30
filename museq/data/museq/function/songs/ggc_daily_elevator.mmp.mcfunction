execute if score @s museq.tick matches 0..96 run function museq:songs/_ggc_daily_elevator.mmp/ggc_daily_elevator.mmp_0
execute if score @s museq.tick matches 100..192 run function museq:songs/_ggc_daily_elevator.mmp/ggc_daily_elevator.mmp_1
execute if score @s museq.tick matches 196..220 run function museq:songs/_ggc_daily_elevator.mmp/ggc_daily_elevator.mmp_2
execute if score @s museq.tick matches 224.. run scoreboard players set @s museq.tick 0
scoreboard players add @s museq.tick 1
