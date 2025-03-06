data modify storage ctf:game started set value false

# Back to Spawn
execute in void run tp @a[tag=ctf_player] -1 64 -110

# Reset Players
execute as @a[tag=ctf_player] run function ctf:player/reset