# -------- HALF RANDOM TEAMS --------
execute if data storage ctf:settings {random_teams:false} run function ctf:setup/team/sort/half_random


# -------- FULL RANDOM TEAMS -------- 
execute unless data storage ctf:settings {random_teams:false} run function ctf:setup/team/sort/full_random