# Swap
scoreboard players add @s ctf_kit 1
execute if score @s scoreboard players add @s ctf_kit 1

# Update
$execute if entity @s[scores={ctf_kit=1}] run function ctf:map/$(game)/kit/1