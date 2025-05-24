# Reset Player Count
scoreboard players reset %ctf_pcount_team1 value
scoreboard players reset %ctf_pcount_team2 value
scoreboard players reset %ctf_pcount_all value

# Count Players
execute as @a[team=ctf_team1] run scoreboard players add %ctf_pcount_team1 value 1
execute as @a[team=ctf_team2] run scoreboard players add %ctf_pcount_team2 value 1
execute as @a[tag=ctf_players] run scoreboard players add %ctf_pcount_all value 1


# Check if tally is different then prev
execute if score %ctf_pcount_all value = %ctf_pcount_all_prev value run return fail

# If not equal, continue
scoreboard players operation %ctf_pcount_all_prev value = %ctf_pcount_all value

# Re-tally
function ctf:lobby/display/count/teams/count