# Add to Queue
execute in void positioned 4 63 -105 if entity @s[dx=10,dz=10,dy=6] run function ctf:player/queue/add

# Remove from Queue
execute in void positioned 4 63 -105 unless entity @s[dx=10,dz=10,dy=6] run function ctf:player/queue/remove