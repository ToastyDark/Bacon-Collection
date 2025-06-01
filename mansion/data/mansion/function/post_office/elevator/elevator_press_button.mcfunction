execute as @e[tag=post_office_door] at @s run function mansion:door/door_close
tag @s add post_office_member
tag @s add should_tp

schedule function mansion:post_office/elevator/elevator_use 15t