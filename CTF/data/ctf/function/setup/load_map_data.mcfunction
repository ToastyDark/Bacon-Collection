# Set Map Dimension
$data modify storage ctf:game dimension set from storage ctf:map $(map).dimension

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




# Flag Colors
#$function ctf:map/$(map)/color/team1_flag with storage ctf:map $(map).team1
#$function ctf:map/$(map)/color/team2_flag with storage ctf:map $(map).team2
#$$data modify storage ctf:map $(map).team1.flag.color set value $(color)
#$$data modify storage ctf:map $(map).team2.flag.color set value $(color)



