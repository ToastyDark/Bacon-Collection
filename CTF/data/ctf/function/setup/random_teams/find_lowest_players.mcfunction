# Check how many players on each team
execute if score $ctf_team1_count value > $ctf_team2_count value run scoreboard players set $ctf_team_join_next value 2
execute if score $ctf_team1_count value < $ctf_team2_count value run scoreboard players set $ctf_team_join_next value 1
execute if score $ctf_team1_count value = $ctf_team2_count value store result score $ctf_team_join_next value run random value 1..2
execute store result storage ctf:game team_join_next int 1 run scoreboard players get $ctf_team_join_next value