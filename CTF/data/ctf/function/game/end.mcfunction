data modify storage ctf:game started set value false

# Back to Spawn
execute in void run spreadplayers -1 -109 3 10 under 64 false @a[tag=ctf_player]

# Reset Players
execute as @a[tag=ctf_player] run function ctf:player/reset
execute as @a[tag=ctf_player] run function ctf:player/respawn/reset

# Clear Play Invenotry

# Give player old Inventory Back