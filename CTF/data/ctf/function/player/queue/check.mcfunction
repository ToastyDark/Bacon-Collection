# Join Random Teams
    # Add to Queue
    execute in minecraft:void positioned -5 63 -114 if entity @s[dx=8,dz=8,dy=5] run function ctf:player/queue/add

    # Remove from Queue
    execute in minecraft:void positioned -5 63 -114 unless entity @s[dx=8,dz=8,dy=5] run function ctf:player/queue/remove

# Join Team 1
    # Add
    execute in minecraft:void if entity @s[dx=10,dz=10,dy=6] run function ctf:player/queue/add

    # Remove