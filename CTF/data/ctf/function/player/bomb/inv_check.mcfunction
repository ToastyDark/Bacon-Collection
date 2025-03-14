$scoreboard players reset $team_$(team_num)_bomb_carrier_bomb_count value
execute store result score $team_$(team_num)_bomb_carrier_bomb_count value run execute if items entity @s container.* tnt

# Stop if player hasn't touched inventory
$execute if score $team_$(team_num)_bomb_carrier_wool_count value matches 36 run return fail


# Reset Inventory
$function ctf:player/obj/inv/bomb/start with storage ctf:game team$(team_num)