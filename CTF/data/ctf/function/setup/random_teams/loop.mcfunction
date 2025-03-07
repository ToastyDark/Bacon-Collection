# Put Random player on random team
execute as @r[tag=ctf_queue] run function ctf:setup/team/join with storage ctf:game team1
execute as @r[tag=ctf_queue] run function ctf:setup/team/join with storage ctf:game team2

# Loop if needed
execute if entity @a[tag=ctf_queue] run function ctf:setup/random_teams/loop