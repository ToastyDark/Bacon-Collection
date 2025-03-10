# Put Random player on random team
execute if entity @a[tag=ctf_queue] if score $ctf_team_join_next value matches 1 as @r[tag=ctf_queue] run function ctf:setup/team/join with storage ctf:game team1
execute if entity @a[tag=ctf_queue] if score $ctf_team_join_next value matches 2 as @r[tag=ctf_queue] run function ctf:setup/team/join with storage ctf:game team2

# Loop if needed
execute if entity @a[tag=ctf_queue] run function ctf:setup/random_teams/loop