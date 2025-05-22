# Reset Previous
scoreboard players set $ctf_queue_count_team1 value 0

# Re-Tally Players
execute as @a[tag=ctf_queue1] run scoreboard players add $ctf_queue_count_team1 value 1