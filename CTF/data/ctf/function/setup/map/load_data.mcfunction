# ---------------Load Literal Map Data---------------
$function ctf:map/$(map)/on_start


# ----------------------- Required Data -----------------------
$data modify storage ctf:game dimension set from storage ctf:map $(map).dimension
$data modify storage ctf:game team1.dimension set from storage ctf:map $(map).dimension
$data modify storage ctf:game team2.dimension set from storage ctf:map $(map).dimension

# Set Team Spawn Points
$data modify storage ctf:game team1.spawn_x set from storage ctf:map $(map).team1.spawn.x
$data modify storage ctf:game team1.spawn_y set from storage ctf:map $(map).team1.spawn.y
$data modify storage ctf:game team1.spawn_z set from storage ctf:map $(map).team1.spawn.z
$data modify storage ctf:game team1.spawn_rx set from storage ctf:map $(map).team1.spawn.rx
$data modify storage ctf:game team1.spawn_ry set from storage ctf:map $(map).team1.spawn.ry

$data modify storage ctf:game team2.spawn_x set from storage ctf:map $(map).team2.spawn.x
$data modify storage ctf:game team2.spawn_y set from storage ctf:map $(map).team2.spawn.y
$data modify storage ctf:game team2.spawn_z set from storage ctf:map $(map).team2.spawn.z
$data modify storage ctf:game team2.spawn_rx set from storage ctf:map $(map).team2.spawn.rx
$data modify storage ctf:game team2.spawn_ry set from storage ctf:map $(map).team2.spawn.ry

# Set Flag Coords
$data modify storage ctf:game team1.flag_x set from storage ctf:map $(map).team1.flag.x
$data modify storage ctf:game team1.flag_y set from storage ctf:map $(map).team1.flag.y
$data modify storage ctf:game team1.flag_z set from storage ctf:map $(map).team1.flag.z

$data modify storage ctf:game team2.flag_x set from storage ctf:map $(map).team2.flag.x
$data modify storage ctf:game team2.flag_y set from storage ctf:map $(map).team2.flag.y
$data modify storage ctf:game team2.flag_z set from storage ctf:map $(map).team2.flag.z

# Bomb Data
$data modify storage ctf:game bomb_x set from storage ctf:map $(map).bomb.x
$data modify storage ctf:game bomb_y set from storage ctf:map $(map).bomb.y
$data modify storage ctf:game bomb_z set from storage ctf:map $(map).bomb.z




# ----- Spectator Data -----
data modify storage ctf:game spectator.dimension set from storage ctf:game dimension
$data modify storage ctf:game spectator.spawn_x set from storage ctf:map $(map).spectator.spawn_x
$data modify storage ctf:game spectator.spawn_y set from storage ctf:map $(map).spectator.spawn_y
$data modify storage ctf:game spectator.spawn_z set from storage ctf:map $(map).spectator.spawn_z
$data modify storage ctf:game spectator.spawn_rx set from storage ctf:map $(map).spectator.spawn_rx
$data modify storage ctf:game spectator.spawn_ry set from storage ctf:map $(map).spectator.spawn_ry


# ----- Kit Data -----
$data modify storage ctf:game kit_dimension set from storage ctf:map $(map).kit.dimension
$data modify storage ctf:game kit_x set from storage ctf:map $(map).kit.x
$data modify storage ctf:game kit_y set from storage ctf:map $(map).kit.y
$data modify storage ctf:game kit_z set from storage ctf:map $(map).kit.z




# -------- Bomb Site Data --------
$data modify storage ctf:game bsite_count set from storage ctf:map $(map).bsite_count


# Bomb time to explode default
data remove storage ctf:game bomb_time_to_explode
$data modify storage ctf:game bomb_time_to_explode set from storage ctf:map $(map).bomb_time_to_explode
execute unless data storage ctf:game bomb_time_to_explode run data modify storage ctf:game bomb_time_to_explode set value 15


# Get TNT Explode Time in Ticks
execute store result score $temp_bomb_time_to_explode_tick value run data get storage ctf:game bomb_time_to_explode
scoreboard players set $20 value 20
scoreboard players operation $temp_bomb_time_to_explode_tick value *= $20 value
execute store result storage ctf:game bomb_time_to_explode_tick int 1 run scoreboard players get $temp_bomb_time_to_explode_tick value


# ---- Team 1 - 1st Bomb Site -----
data modify storage ctf:game team1.bsite.1.bombsite_num set value 1
data modify storage ctf:game team1.bsite.1.team_num set value 1
$data modify storage ctf:game team1.bsite.1.x set from storage ctf:map $(map).team1.bsite_1_x
$data modify storage ctf:game team1.bsite.1.y set from storage ctf:map $(map).team1.bsite_1_y
$data modify storage ctf:game team1.bsite.1.z set from storage ctf:map $(map).team1.bsite_1_z
$data modify storage ctf:game team1.bsite.1.rx set from storage ctf:map $(map).team1.bsite_1_rx
$data modify storage ctf:game team1.bsite.1.ry set from storage ctf:map $(map).team1.bsite_1_ry

# Team 1 - 2nd Bomb Site
data modify storage ctf:game team1.bsite.2.bombsite_num set value 2
data modify storage ctf:game team1.bsite.2.team_num set value 1
$data modify storage ctf:game team1.bsite.2.x set from storage ctf:map $(map).team1.bsite_2_x
$data modify storage ctf:game team1.bsite.2.y set from storage ctf:map $(map).team1.bsite_2_y
$data modify storage ctf:game team1.bsite.2.z set from storage ctf:map $(map).team1.bsite_2_z
$data modify storage ctf:game team1.bsite.2.rx set from storage ctf:map $(map).team1.bsite_2_rx
$data modify storage ctf:game team1.bsite.2.ry set from storage ctf:map $(map).team1.bsite_2_ry

# Team 1 - 3rd Bomb Site
data modify storage ctf:game team1.bsite.3.bombsite_num set value 3
data modify storage ctf:game team1.bsite.3.team_num set value 1
$data modify storage ctf:game team1.bsite.3.x set from storage ctf:map $(map).team1.bsite_3_x
$data modify storage ctf:game team1.bsite.3.y set from storage ctf:map $(map).team1.bsite_3_y
$data modify storage ctf:game team1.bsite.3.z set from storage ctf:map $(map).team1.bsite_3_z
$data modify storage ctf:game team1.bsite.3.rx set from storage ctf:map $(map).team1.bsite_3_rx
$data modify storage ctf:game team1.bsite.3.ry set from storage ctf:map $(map).team1.bsite_3_ry


# Team 2 - 1st Bomb Site
data modify storage ctf:game team2.bsite.1.bombsite_num set value 1
data modify storage ctf:game team2.bsite.1.team_num set value 2
$data modify storage ctf:game team2.bsite.1.x set from storage ctf:map $(map).team2.bsite_1_x
$data modify storage ctf:game team2.bsite.1.y set from storage ctf:map $(map).team2.bsite_1_y
$data modify storage ctf:game team2.bsite.1.z set from storage ctf:map $(map).team2.bsite_1_z
$data modify storage ctf:game team2.bsite.1.rx set from storage ctf:map $(map).team2.bsite_1_rx
$data modify storage ctf:game team2.bsite.1.ry set from storage ctf:map $(map).team2.bsite_1_ry

# Team 2 - 2nd Bomb Site
data modify storage ctf:game team2.bsite.2.bombsite_num set value 2
data modify storage ctf:game team2.bsite.2.team_num set value 2
$data modify storage ctf:game team2.bsite.2.x set from storage ctf:map $(map).team2.bsite_2_x
$data modify storage ctf:game team2.bsite.2.y set from storage ctf:map $(map).team2.bsite_2_y
$data modify storage ctf:game team2.bsite.2.z set from storage ctf:map $(map).team2.bsite_2_z
$data modify storage ctf:game team2.bsite.2.rx set from storage ctf:map $(map).team2.bsite_2_rx
$data modify storage ctf:game team2.bsite.2.ry set from storage ctf:map $(map).team2.bsite_2_ry

# Team 2 - 3rd Bomb Site
data modify storage ctf:game team2.bsite.3.bombsite_num set value 3
data modify storage ctf:game team2.bsite.3.team_num set value 2
$data modify storage ctf:game team2.bsite.3.x set from storage ctf:map $(map).team2.bsite_3_x
$data modify storage ctf:game team2.bsite.3.y set from storage ctf:map $(map).team2.bsite_3_y
$data modify storage ctf:game team2.bsite.3.z set from storage ctf:map $(map).team2.bsite_3_z
$data modify storage ctf:game team2.bsite.3.rx set from storage ctf:map $(map).team2.bsite_3_rx
$data modify storage ctf:game team2.bsite.3.ry set from storage ctf:map $(map).team2.bsite_3_ry





# ----------------------- Data w- Default Parameters -----------------------
# Time of Day
data remove storage ctf:game time
$data modify storage ctf:game time set from storage ctf:map $(map).time
execute unless data storage ctf:game time run data modify storage ctf:game time set value random


# Points to Win
data remove storage ctf:game points_to_win
$data modify storage ctf:game points_to_win set from storage ctf:map $(map).points_to_win
execute unless data storage ctf:game points_to_win run data modify storage ctf:game points_to_win set value 5
execute store result score $ctf_points_to_win value run data get storage ctf:game points_to_win


# Flag Respawn Delay
data remove storage ctf:game flag_respawn_delay
$data modify storage ctf:game flag_respawn_delay set from storage ctf:map $(map).flag_respawn_delay
execute unless data storage ctf:game flag_respawn_delay run data modify storage ctf:game flag_respawn_delay set value 10


# Bomb Respawn Delay
data remove storage ctf:game bomb_respawn_delay
$data modify storage ctf:game bomb_respawn_delay set from storage ctf:map $(map).bomb_respawn_delay
execute unless data storage ctf:game bomb_respawn_delay run data modify storage ctf:game bomb_respawn_delay set value 15


# -------- COLORS --------
# Team 1 Colors
data remove storage ctf:game team1.color
$data modify storage ctf:game team1.color set from storage ctf:map $(map).team1.color
execute unless data storage ctf:game team1.color run data modify storage ctf:game team1.color set value red
function ctf:setup/team/color with storage ctf:game team1


# Team 2 Colors
data remove storage ctf:game team2.color
$data modify storage ctf:game team2.color set from storage ctf:map $(map).team2.color
execute unless data storage ctf:game team2.color run data modify storage ctf:game team2.color set value blue
function ctf:setup/team/color with storage ctf:game team2


# Remove Flag Colors First
data remove storage ctf:game team1.flag_color
data remove storage ctf:game team2.flag_color
# Set Flag Team Colors
$data modify storage ctf:game team1.flag_color set from storage ctf:map $(map).team1.color
$data modify storage ctf:game team2.flag_color set from storage ctf:map $(map).team2.color




# Ops Flag
data modify storage ctf:game team1.ops_flag_color set from storage ctf:game team2.flag_color
data modify storage ctf:game team2.ops_flag_color set from storage ctf:game team1.flag_color

# Flag Color Fixes
function ctf:setup/team/color_fixes with storage ctf:game team1
function ctf:setup/team/color_fixes with storage ctf:game team2

# Team Color Decimal
function ctf:setup/team/color_dec with storage ctf:game team1
function ctf:setup/team/color_dec with storage ctf:game team2




# Bomb Method Default (Old)
data remove storage ctf:game bomb_method
$data modify storage ctf:game bomb_method set from storage ctf:map $(map).bomb_method
execute unless data storage ctf:game bomb_method run data modify storage ctf:game bomb_method set value old
# Old or New based on value
$execute store result score %temp temp run data get storage ctf:map $(map).bombsite_count
execute if score %temp temp matches 0 run data modify storage ctf:game bomb_method set value old
execute if score %temp temp matches 1.. run data modify storage ctf:game bomb_method set value new