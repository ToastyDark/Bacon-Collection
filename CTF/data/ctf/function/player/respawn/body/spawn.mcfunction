# TEMP reset death
scoreboard players reset @s ctf_died

# Get the Player's Username
loot spawn ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:player_head","functions":[{"function":"minecraft:fill_player_head","entity":"this"}]}]}]}
tag @n[type=item,nbt={Age:0s},distance=0] add ctf_body_head

# Spawn Mannequin
execute rotated as @s run summon mannequin ~ ~ ~ {Tags:["ctf_dead_body","ctf_dead_body_new"],pose:"sleeping",Invulnerable:1b,Silent:1b}
rotate @n[tag=ctf_dead_body_new] ~ 0

# Store Player's name in Mannequin
data modify entity @n[tag=ctf_dead_body_new] profile set from entity @n[tag=ctf_body_head] Item.components."minecraft:profile"
kill @n[tag=ctf_body_head]

# Add to Team
team join ctf_dead_bodies @n[tag=ctf_dead_body_new]

# Set Timer to 0
data modify entity @n[tag=ctf_dead_body_new] data.timer set value 0


# Remove New
tag @n[tag=ctf_dead_body_new] remove ctf_dead_body_new