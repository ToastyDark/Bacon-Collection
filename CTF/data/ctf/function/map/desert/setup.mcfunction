# Set Team Colors
$team modify ctf_team1 color $(color)
$team modify ctf_team2 color $(color)

# Flag Colors
$data modify storage ctf:map desert.team1.flag.color set value $(color)
$data modify storage ctf:map desert.team2.flag.color set value $(color)