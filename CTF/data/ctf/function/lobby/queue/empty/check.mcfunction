# Reset
data modify storage ctf:temp queue_empty set value true

# Check Queues
execute if entity @a[tag=ctf_queue] run data modify storage ctf:temp queue_empty set value false
execute if entity @a[tag=ctf_queue1] run data modify storage ctf:temp queue_empty set value false
execute if entity @a[tag=ctf_queue2] run data modify storage ctf:temp queue_empty set value false

# Check How Many players are queued
scoreboard players reset $ctf_players_queued_count value
execute as @a[tag=ctf_queue] run scoreboard players add $ctf_players_queued_count value 1
execute as @a[tag=ctf_queue1] run scoreboard players add $ctf_players_queued_count value 1
execute as @a[tag=ctf_queue2] run scoreboard players add $ctf_players_queued_count value 1