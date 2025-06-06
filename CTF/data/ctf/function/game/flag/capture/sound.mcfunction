# 1
$execute if score $ctf_team$(team_num)_capture_sound value matches 1 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 0.9 0.1 
$execute if score $ctf_team$(team_num)_capture_sound value matches 1 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.4 0.9 0.1

# 2
$execute if score $ctf_team$(team_num)_capture_sound value matches 3 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 0.8 0.1
$execute if score $ctf_team$(team_num)_capture_sound value matches 3 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.4 0.8 0.1

# 3
$execute if score $ctf_team$(team_num)_capture_sound value matches 5 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1.2 0.1
$execute if score $ctf_team$(team_num)_capture_sound value matches 5 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.4 1.2 0.1

# 4
$execute if score $ctf_team$(team_num)_capture_sound value matches 7 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.4 1.6 0.1
$execute if score $ctf_team$(team_num)_capture_sound value matches 7 as @a[team=ctf_team$(team_num)] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.4 1.6 0.1

# Reset
$scoreboard players add $ctf_team$(team_num)_capture_sound value 1
$execute if score $ctf_team$(team_num)_capture_sound value matches 8.. run scoreboard players reset $ctf_team$(team_num)_capture_sound value