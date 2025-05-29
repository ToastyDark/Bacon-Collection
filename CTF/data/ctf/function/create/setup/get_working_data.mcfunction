# Temporarily store the players ID
execute store result storage ctf:temp map_create_data.temp.player_id int 1 run scoreboard players get @s id

# Temporarily store the map's ID
$data modify storage ctf:temp map_create_data.temp.map_id set value $(map_id)

# Temporarily store amount of bombsites
$data modify storage ctf:temp map_create_data.temp.bombsite_count set value $(bombsite_count)