# Check if flag block is actually gone
$execute in $(dimension) unless block $(flag_x) $(flag_y) $(flag_z) air run return fail

# Then, steal flag
$function ctf:game/flag/steal/steal with storage ctf:game team$(team_ops)