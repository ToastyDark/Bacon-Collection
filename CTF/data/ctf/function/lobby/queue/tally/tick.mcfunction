# Add to Tally Check
scoreboard players reset %ctf_queue_tally_all value
execute as @a[tag=ctf_queue] run scoreboard players add %ctf_queue_tally_all value 1
execute as @a[tag=ctf_queue1] run scoreboard players add %ctf_queue_tally_all value 1
execute as @a[tag=ctf_queue2] run scoreboard players add %ctf_queue_tally_all value 1

# Check if tally is different then prev
execute if score %ctf_queue_tally_all value = %ctf_queue_tally_all_prev value run return fail

# If not equal, continue
scoreboard players operation %ctf_queue_tally_all_prev value = %ctf_queue_tally_all value

# Re-tally
#function ctf:lobby/display/count/main