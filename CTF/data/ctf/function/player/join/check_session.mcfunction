# Return if in game
execute if score @s ctf_session = $ctf_session value run return run function ctf:player/respawn/start

# Else, Kick
function ctf:player/leave/leave