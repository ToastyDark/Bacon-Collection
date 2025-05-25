# Count all before changing
function ctf:lobby/display/count/queue/all

# Check if tally is different then prev
#execute if score %ctf_queue_tally_all value = %ctf_queue_tally_all_prev value run return fail

# If not equal, continue
#scoreboard players operation %ctf_queue_tally_all_prev value = %ctf_queue_tally_all value

# Re-tally
function ctf:lobby/display/count/queue/count

# Check if there are enough players to start
execute if score %ctf_queue_tally_all value matches 2.. run return run data modify storage ctf:lobby enough_players set value true
data modify storage ctf:lobby enough_players set value false