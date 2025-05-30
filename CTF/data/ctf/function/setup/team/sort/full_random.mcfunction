# Move all players to random sorting
execute as @a[tag=ctf_queue1] run function ctf:setup/team/sort/switch_to_random
execute as @a[tag=ctf_queue2] run function ctf:setup/team/sort/switch_to_random

# Start Randomizing 
function ctf:setup/random_teams/main