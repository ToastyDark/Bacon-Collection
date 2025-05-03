# Mark guy as planted
scoreboard players reset @s ctf_bomb_time
tag @s add ctf_bomb_planted


# Spawn TNT
function ctf:game/_bomb/plant/misc/spawn_tnt with storage ctf:game
ride @n[type=tnt] mount @s

# Prepare new time
scoreboard players set @s ctf_bomb_time 15



# Spawn Text Display Timer
function ctf:game/_bomb/success/timer/start



# Message
$execute as @a[team=ctf_team$(team_num)] run function ctf:game/_bomb/plant/msg/team with storage ctf:game team$(team_num)
$execute as @a[team=ctf_team$(team_ops)] run function ctf:game/_bomb/plant/msg/ops with storage ctf:game team$(team_ops)