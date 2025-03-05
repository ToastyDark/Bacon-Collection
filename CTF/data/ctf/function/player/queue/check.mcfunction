# Add to Queue
execute in minecraft:void if entity @s[x=-6,y=63,z=-115,dx=10,dz=10,dy=6] run function ctf:player/queue/add

# Remove from Queue
execute in minecraft:void unless entity @s[x=-6,y=63,z=-115,dx=10,dz=10,dy=6] run function ctf:player/queue/remove