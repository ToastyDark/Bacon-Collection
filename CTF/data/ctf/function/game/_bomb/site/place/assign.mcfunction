# Give Bombsite Num
execute store result entity @s data.bombsite_num int 1 run scoreboard players get bombsites_placed value

# Give Bombsite Team Num
$data modify entity @s data.team_num set value $(team_num)

# Remove New Tag
tag @s remove ctf_bombsite_new