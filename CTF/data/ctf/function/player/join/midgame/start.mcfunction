schedule function ctf:player/join/midgame/timer_reset 3t append

# Join Team
$function ctf:setup/team/join with storage ctf:game team$(team_num)

# Setup Player
function ctf:player/join/setup

# TP Player
$function ctf:setup/spawn/tp with storage ctf:game team$(team_num)