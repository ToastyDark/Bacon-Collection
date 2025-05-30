execute as @e[tag=post_office_door] at @s run function mansion_temp:door_close
tag @s add post_office_member
tag @s add should_tp

schedule function mansion_temp:elevator_use 15t