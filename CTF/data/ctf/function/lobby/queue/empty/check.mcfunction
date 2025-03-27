# Reset
data modify storage ctf:temp queue_empty set value true

# Check Queues
execute if entity @a[tag=ctf_queue] run data modify storage ctf:temp queue_empty set value false
execute if entity @a[tag=ctf_queue1] run data modify storage ctf:temp queue_empty set value false
execute if entity @a[tag=ctf_queue2] run data modify storage ctf:temp queue_empty set value false