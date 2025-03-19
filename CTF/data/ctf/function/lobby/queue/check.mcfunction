# Join Random Teams
    # Add to Queue
    execute in void align xyz positioned 34 76 -133 if entity @s[dx=8,dz=8,dy=7] at @s run function ctf:lobby/queue/random/join

    # Remove from Queue
    #execute in void align xyz positioned 34 76 -133 unless entity @s[dx=8,dz=8,dy=7] if entity @s[tag=ctf_queue] at @s run function ctf:lobby/queue/random/leave

# Join Team 1
    # Add
    execute in void align xyz positioned 24 78 -124 if entity @s[dx=6,dz=6,dy=7] at @s run function ctf:lobby/queue/team1/join
    # Remove
    #execute in void align xyz positioned 24 78 -124 unless entity @s[dx=6,dz=6,dy=7] if entity @s[tag=ctf_queue1] at @s run function ctf:lobby/queue/team1/leave

# Join Team 2
    # Add
    execute in void align xyz positioned 46 78 -124 if entity @s[dx=6,dz=6,dy=7] at @s run function ctf:lobby/queue/team2/join
    # Remove
    #execute in void align xyz positioned 46 78 -124 unless entity @s[dx=6,dz=6,dy=7] if entity @s[tag=ctf_queue2] at @s run function ctf:lobby/queue/team2/leave


# Actionbar
execute if entity @s[tag=ctf_queue] run function ctf:lobby/queue/random/msg
execute if entity @s[tag=ctf_queue1] run function ctf:lobby/queue/team1/msg
execute if entity @s[tag=ctf_queue2] run function ctf:lobby/queue/team2/msg