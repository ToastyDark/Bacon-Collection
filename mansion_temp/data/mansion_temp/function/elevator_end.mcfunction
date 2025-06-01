execute in void as @a[tag=post_office_member] at @s run stopsound @s master entity.minecart.inside
execute in void as @a[tag=post_office_member] at @s run playsound minecraft:block.note_block.chime master @s
execute at @a[tag=museq.ggc_daily_elevator.mmp] as @e[type=marker,sort=nearest,limit=1,tag=post_office_door] run function mansion_temp:door_open
tag @a remove museq.ggc_daily_elevator.mmp