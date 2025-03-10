# Join Random Teams
    # Add to Queue
    execute in minecraft:void align xyz positioned -5 63 -114 if entity @s[dx=7,dz=7,dy=5] run function ctf:player/queue/random/join

    # Remove from Queue
    execute in minecraft:void align xyz positioned -5 63 -114 unless entity @s[dx=7,dz=7,dy=5] if entity @s[tag=ctf_queue] run function ctf:player/queue/random/leave

# Join Team 1
    # Add
    execute in minecraft:void align xyz positioned -9 63 -118 if entity @s[dx=4,dz=7,dy=4] run function ctf:player/queue/team1/join
    # Remove
    execute in minecraft:void align xyz positioned -9 63 -118 unless entity @s[dx=4,dz=7,dy=4] if entity @s[tag=ctf_queue1] run function ctf:player/queue/team1/leave

# Join Team 2
    # Add
    execute in minecraft:void align xyz positioned 3 63 -118 if entity @s[dx=4,dz=7,dy=4] run function ctf:player/queue/team2/join
    # Remove
    execute in minecraft:void align xyz positioned 3 63 -118 unless entity @s[dx=4,dz=7,dy=4] if entity @s[tag=ctf_queue2] run function ctf:player/queue/team2/leave