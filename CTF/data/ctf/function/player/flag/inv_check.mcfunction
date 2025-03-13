execute store result score $flag_carrier_wool_count value run execute if items entity @s container.* minecraft:red_wool

# Stop if player hasn't touched inventory
$execute if score $team_$(team_num)flag_carrier_wool_count value matches 36 run return fail


# Reset Inventory
