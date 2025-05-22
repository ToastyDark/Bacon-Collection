# Reset Previous
scoreboard players set $ctf_queue_count_team2 value 0

# Re-Tally Players
execute as @a[team=ctf_team2] run scoreboard players add $ctf_queue_count_team2 value 1