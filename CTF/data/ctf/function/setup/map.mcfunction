# Team Colors
$function ctf:map/$(map)/setup with storage ctf:map $(map).team1
$function ctf:map/$(map)/setup with storage ctf:map $(map).team2

# Flag Colors
$function ctf:map/$(map)/color/team1_flag with storage ctf:map desert.team1
$function ctf:map/$(map)/color/team2_flag with storage ctf:map desert.team2
#$data modify storage ctf:map $(map).team1.flag.color set value $(color)
#$data modify storage ctf:map $(map).team2.flag.color set value $(color)
#!!!data modify storage ctf:game team1.flag_color set from storage ctf:map desert



# Place Team Flags
$function ctf:game/flag/place/flag with storage ctf:map $(map).team1.flag
$function ctf:game/flag/place/flag with storage ctf:map $(map).team2.flag