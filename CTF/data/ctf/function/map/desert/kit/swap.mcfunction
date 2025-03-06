# Swap
scoreboard players add @s ctf_kit 1
execute if entity @s[scores={ctf_kit=3}] run scoreboard players set @s ctf_kit 1

# Update
$execute if entity @s[scores={ctf_kit=1}] run function ctf:map/$(map)/kit/1