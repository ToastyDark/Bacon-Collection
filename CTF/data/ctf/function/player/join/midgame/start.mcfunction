scoreboard players reset @s ctf_join_time

# Join Team
$function ctf:setup/team/join with storage ctf:game team$(team_num)

# Setup Player
function ctf:player/join/setup

# TP Player
$function ctf:setup/spawn/tp with storage ctf:game team$(team_num)