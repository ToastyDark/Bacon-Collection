# Reset Clicks
function ctf:game/_bomb/site/click/reset/reset

# Mark guy as planted
tag @s add ctf_bomb_planted


# Spawn TNT
function ctf:game/_bomb/plant/misc/spawn_tnt with storage ctf:game
ride @n[type=tnt] mount @s

# Prepare new time
scoreboard players set @s ctf_bomb_time 15



# Spawn Text Display Timer
function ctf:game/_bomb/success/timer/start


# Remove Bomb from Player
execute as @a[tag=ctf_has_bomb] run tag @s remove ctf_has_bomb



# Message
$execute as @a[team=ctf_team$(team_num)] run function ctf:game/_bomb/plant/msg/team with storage ctf:game team$(team_num)
$execute as @a[team=ctf_team$(team_ops)] run function ctf:game/_bomb/plant/msg/ops with storage ctf:game team$(team_ops)