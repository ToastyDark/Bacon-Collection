# Put Random player on random team
execute as @r[tag=ctf_queue] run function ctf:setup/team_1/join
execute as @r[tag=ctf_queue] run function ctf:setup/team_2/join

# Loop if needed
execute if entity @a[tag=ctf_queue] run function ctf:setup/random_teams/loop