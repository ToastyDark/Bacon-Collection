# Reset Previous
scoreboard players set $ctf_queue_count_all value 0

# Re-Tally Players
execute as @a[tag=ctf_queue] run scoreboard players add $ctf_queue_count_all value 1
execute as @a[tag=ctf_queue1] run scoreboard players add $ctf_queue_count_all value 1
execute as @a[tag=ctf_queue2] run scoreboard players add $ctf_queue_count_all value 1