# Find lowest player
function ctf:setup/random_teams/find_lowest_players

# Start Loop
execute if entity @a[tag=ctf_queue] run function ctf:setup/random_teams/loop