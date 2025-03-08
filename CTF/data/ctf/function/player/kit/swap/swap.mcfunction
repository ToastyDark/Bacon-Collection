# Play Swap Sound
execute at @s run playsound minecraft:entity.armadillo.scute_drop

# Swap
execute unless entity @s[scores={ctf_died=1..}] run scoreboard players add @s ctf_kit 1
execute if entity @s[scores={ctf_kit=3}] run scoreboard players set @s ctf_kit 1

# Store Kit Number and
$execute store result storage ctf:game team$(team_num).kit_num int 1 run scoreboard players get @s ctf_kit

# Give Items
forceload add ~ ~
$function ctf:player/kit/give/start with storage ctf:game team$(team_num)

# Display
$function ctf:player/kit/give/display_name with storage ctf:game team$(team_num)