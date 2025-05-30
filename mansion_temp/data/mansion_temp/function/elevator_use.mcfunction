schedule function mansion_temp:elevator_sound 10t
schedule function mansion_temp:elevator_sound 120t
tag @s add post_office_member

scoreboard players set @s museq.tick -10
tag @s add museq.ggc_daily_elevator.mmp

schedule function mansion_temp:elevator_end 210t append