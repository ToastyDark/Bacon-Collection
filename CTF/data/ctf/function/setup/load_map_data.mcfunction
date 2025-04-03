# ---------------Load Literal Map Data---------------
$function ctf:map/$(map)/load


# --------------- Set Map Dimension ---------------
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

# Time of Day
$data modify storage ctf:game time set from storage ctf:map $(map).time

# Points to Win
$data modify storage ctf:game points_to_win set from storage ctf:map $(map).points_to_win
execute store result score $ctf_points_to_win value run data get storage ctf:game points_to_win

# Flag Respawn Delay
$data modify storage ctf:game flag_respawn_delay set from storage ctf:map $(map).flag_respawn_delay

# Bomb Respawn Delay
$data modify storage ctf:game bomb_respawn_delay set from storage ctf:map $(map).bomb_respawn_delay

# ---------------COLORS---------------
# Team Colors
$data modify storage ctf:game team1.color set from storage ctf:map $(map).team1.color
$data modify storage ctf:game team2.color set from storage ctf:map $(map).team2.color
function ctf:setup/team/color with storage ctf:game team1
function ctf:setup/team/color with storage ctf:game team2

# ---- Flag Team Colors ----
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



# ---------------Spectator Data---------------
data modify storage ctf:game spectator.dimension set from storage ctf:game dimension
$data modify storage ctf:game spectator.spawn_x set from storage ctf:map $(map).spectator.spawn_x
$data modify storage ctf:game spectator.spawn_y set from storage ctf:map $(map).spectator.spawn_y
$data modify storage ctf:game spectator.spawn_z set from storage ctf:map $(map).spectator.spawn_z
$data modify storage ctf:game spectator.spawn_rx set from storage ctf:map $(map).spectator.spawn_rx
$data modify storage ctf:game spectator.spawn_ry set from storage ctf:map $(map).spectator.spawn_ry


# ---------------Kit Data---------------
$data modify storage ctf:game kit_dimension set from storage ctf:map $(map).kit.dimension
$data modify storage ctf:game kit_x set from storage ctf:map $(map).kit.x
$data modify storage ctf:game kit_y set from storage ctf:map $(map).kit.y
$data modify storage ctf:game kit_z set from storage ctf:map $(map).kit.z