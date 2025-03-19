# Check if queued for ctf
execute if entity @s[tag=ctf_queue] run function ctf:lobby/queue/random/leave
execute if entity @s[tag=ctf_queue1] run function ctf:lobby/queue/team1/leave
execute if entity @s[tag=ctf_queue2] run function ctf:lobby/queue/team2/leave