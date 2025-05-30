schedule function mansion_temp:elevator_sound 1t
schedule function mansion_temp:elevator_sound 110t append
tag @s add post_office_member

scoreboard players set @s museq.tick -1
tag @s add museq.ggc_daily_elevator.mmp

schedule function mansion_temp:elevator_end 200t append

