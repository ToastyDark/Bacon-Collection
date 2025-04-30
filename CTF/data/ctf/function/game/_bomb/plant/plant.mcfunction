# Mark guy as planted
tag @s add ctf_bomb_planted


# Spawn TNT
summon tnt ~ ~ ~ {fuse:300,explosion_power:0}
ride @n[type=tnt] mount @s

# Prepare new time
scoreboard players set @s ctf_bomb_time 15


# Interaction Stuff
execute as @n[type=interaction, tag=ctf_bombsite ] run scoreboard players reset @s ctf_bomb_time
execute as @n[type=interaction, tag=ctf_bombsite ] run tag @s add ctf_bomb_planted



# Message
$execute as @a[team=team$(team_num)] run function ctf:game/_bomb/plant/msg/team with storage ctf:game team$(team_num)
$execute as @a[team=team$(team_ops)] run function ctf:game/_bomb/plant/msg/ops with storage ctf:game team$(team_ops)