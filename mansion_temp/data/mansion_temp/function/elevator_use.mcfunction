schedule function mansion_temp:elevator_sound 1t
schedule function mansion_temp:elevator_sound 110t append

scoreboard players set @a[tag=post_office_member] museq.tick -1
tag @a[tag=post_office_member] add museq.ggc_daily_elevator.mmp

schedule function mansion_temp:elevator_end 200t append

execute in void as @a[tag=post_office_member,tag=should_tp] at @s run tp @s ~-16 ~6 ~
tag @a[tag=should_tp] remove should_tp