# Reset Previous
scoreboard players set $ctf_queue_count_random value 0

# Re-Tally Players
execute as @a[tag=ctf_queue] run scoreboard players add $ctf_queue_count_random value 1