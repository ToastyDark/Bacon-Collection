# Create Teams
function ctf:setup/team_1/create
function ctf:setup/team_2/create

# Load Map Data
function ctf:setup/maps


# Sort Teams
execute if data storage ctf:settings {random_teams:true} run function ctf:setup/random_teams/loop