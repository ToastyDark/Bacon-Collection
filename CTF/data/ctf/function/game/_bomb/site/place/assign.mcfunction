# Give Bombsite Num
execute store result entity @s data.bombsite_num int 1 run scoreboard players get bombsites_placed value

# Give Bombsite Team Num
$data modify entity @s data.team_num set value $(team_num)


# Set Time to Explode, use default if no value set
$data modify entity @s data.time_to_explode set from storage ctf:map $(map).team$(team_num).bsite[$(bombsite_num)].time_to_explode
execute unless data entity @s data.time_to_explode store result entity @s data.time_to_explode int 1 run data get storage ctf:game bomb_time_to_explode



# Set Gives Point, use default if no value set
$data modify entity @s data.gives_point set from storage ctf:map $(map).team$(team_num).bsite[$(bombsite_num)].gives_point
execute unless data entity @s data.gives_point store result entity @s data.gives_point int 1 run data modify entity @s data.gives_point set value true





# Remove New Tag
tag @s remove ctf_bombsite_new