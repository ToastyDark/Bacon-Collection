# Preset Team 1
execute as @a[tag=ctf_queue1] run function ctf:setup/team/join with storage ctf:game team1

# Preset Team 2
execute as @a[tag=ctf_queue2] run function ctf:setup/team/join with storage ctf:game team2

# Random Teams
function ctf:setup/random_teams/main