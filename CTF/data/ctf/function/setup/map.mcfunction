# Team Colors
$function ctf:map/$(map)/setup with storage ctf:map $(map).team1
$function ctf:map/$(map)/setup with storage ctf:map $(map).team2

# Place Team Flags
$function ctf:game/flag/place/flag with storage ctf:map $(map).team1.flag
$function ctf:game/flag/place/flag with storage ctf:map $(map).team2.flag