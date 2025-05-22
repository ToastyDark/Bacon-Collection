# Reset Previous
scoreboard players set $ctf_queue_count_team1 value 0

# Re-Tally Players
execute as @a[team=ctf_team1] run scoreboard players add $ctf_queue_count_team1 value 1