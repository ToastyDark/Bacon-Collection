# Set Player as Flag Stolen
function ctf:game/flag/player/set



# Set Temp Team Data
function ctf:game/flag/set_temp_team

# Set Stolen
$data modify storage ctf:game team$(team_ops).flag_stolen set value true

# Stolen Commands
function ctf:game/flag/stolen with storage ctf:game temp