data modify storage ctf:game started set value false

# Back to Spawn
execute in void run spreadplayers -1 -109 3 10 under 64 false @a

# Reset Players
execute as @a[tag=ctf_player] run function ctf:player/reset