# Stop if amount of points to win reached
$execute if score ctf_team$(team_num) ctf_points matches $(points_to_win).. run return fail 

# Check if should replace flag after capture
$function ctf:game/flag/place/timer/start with storage ctf:game team$(team_num)