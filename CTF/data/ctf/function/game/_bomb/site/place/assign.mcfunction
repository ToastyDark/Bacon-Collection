# Give Bombsite Num
execute store result entity @s data.bombsite_num int 1 run scoreboard players get bombsites_placed value

# Give Bombsite Team Num
$data modify entity @s data.team_num set value $(team_num)


# Set Time to Explode
$data modify entity @s data.time_to_explode set from storage ctf:map $(map).team$(team_num).bsite[$(bombsite_num)].time_to_explode

# If no value set, use default value
execute unless data entity @s data.time_to_explode store result score $bomb_explode_timer value run data get storage ctf:game bomb_time_to_explode





# Remove New Tag
tag @s remove ctf_bombsite_new