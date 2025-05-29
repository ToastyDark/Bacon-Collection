# Set data for specific player
# Set map ID player is working on
$data modify storage ctf:temp map_create_data.player.$(player_id).map set value $(map_id)

# Set Bombsites for map player is working on
$data modify storage ctf:temp map_create_data.player.$(player_id).bombsite_count set value $(bombsite_count)

# Set Working Dimension
$data modify storage ctf:temp map_create_data.player.$(player_id).dimension set from entity @s Dimension

# Set Current Team
$data modify storage ctf:temp map_create_data.player.$(player_id).current_team set value $(current_team)

# Set Bombsites placed to 0
$data modify storage ctf:temp map_create_data.player.$(player_id).team1_bombsites set value 0
$data modify storage ctf:temp map_create_data.player.$(player_id).team2_bombsites set value 0

# Set Player ID again
$data modify storage ctf:temp map_create_data.player.$(player_id).player_id set value $(player_id)