schedule function ctf:player/join/midgame/timer_reset 3t append

# Join Team
$function ctf:setup/team/join with storage ctf:game team$(team_num)

# Setup Player
function ctf:player/join/setup

# TP Player
$function ctf:setup/spawn/tp with storage ctf:game team$(team_num)


# Announce player joining
execute if entity @s[team=ctf_team1] run function ctf:player/join/midgame/msg/main with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/join/midgame/msg/main with storage ctf:game team2