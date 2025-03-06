# Team Colors
data modify storage ctf:game team1.color set from storage ctf:map desert.team1.color
data modify storage ctf:game team1.color set from storage ctf:map desert.team2.color
function ctf:setup/team_1/color with storage ctf:game team1
function ctf:setup/team_2/color with storage ctf:game team2

# Flag Team Colors
data modify storage ctf:game team1.flag_color set from storage ctf:map desert.team1.color
data modify storage ctf:game team1.flag_color set from storage ctf:map desert.team2.color

# Set Map Dimension

# Set Team Spawn Points

# Set Flag Coords

# Set Team Spawn Coords






# Flag Colors
$function ctf:map/$(map)/color/team1_flag with storage ctf:map desert.team1
$function ctf:map/$(map)/color/team2_flag with storage ctf:map desert.team2
#$data modify storage ctf:map $(map).team1.flag.color set value $(color)
#$data modify storage ctf:map $(map).team2.flag.color set value $(color)



# Place Team Flags
$function ctf:game/flag/place/flag with storage ctf:map $(map).team1.flag
$function ctf:game/flag/place/flag with storage ctf:map $(map).team2.flag