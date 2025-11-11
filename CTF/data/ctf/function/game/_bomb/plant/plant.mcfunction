# Reset Clicks
function ctf:game/_bomb/site/click/reset/reset

# Mark guy as planted
tag @s add ctf_bomb_planted

# Mark Bomb as Planted
$data modify storage ctf:game bomb_planted set value team$(team_num)


# Spawn TNT
function ctf:game/_bomb/plant/misc/tnt_time_calc with entity @s data
ride @n[type=tnt] mount @s

# Prepare new time
#scoreboard players set @s ctf_bomb_time 15


# Spawn Text Display Timer
function ctf:game/_bomb/success/timer/start

# Add Bomb Cooldown to Bomber
execute as @a[tag=ctf_has_bomb] run scoreboard players add @s ctf_bomb_plant_cd 1

# Remove Bomb from Player
execute as @a[tag=ctf_has_bomb] run function invsave:restore {path:ctf_bomber}
execute as @a[tag=ctf_has_bomb] run tag @s remove ctf_has_bomb


# Message
$execute as @a[team=ctf_team$(team_num)] run function ctf:game/_bomb/plant/msg/team with storage ctf:game team$(team_num)
$execute as @a[team=ctf_team$(team_ops)] run function ctf:game/_bomb/plant/msg/ops with storage ctf:game team$(team_ops)

# Plant Sound
execute as @a[tag=ctf_has_bomb_team1] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.3 2 0.3
execute as @a[tag=ctf_player] at @s run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 2 1.6 1