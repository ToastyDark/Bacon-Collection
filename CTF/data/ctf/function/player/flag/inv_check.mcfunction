$scoreboard players reset $team_$(team_num)_flag_carrier_wool_count value
$execute store result score $team_$(team_num)_flag_carrier_wool_count value run execute if items entity @s container.* minecraft:$(ops_flag_color)_wool

# Stop if player hasn't touched inventory
$execute if score $team_$(team_num)_flag_carrier_wool_count value matches 36 run return fail


# Reset Inventory
$function ctf:player/obj/inv/flag/start with storage ctf:game team$(team_num)