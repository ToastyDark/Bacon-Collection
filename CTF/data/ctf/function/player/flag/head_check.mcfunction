# Stop if player hasn't touched head
$execute if items entity @s armor.head $(ops_flag_color)_woll run return fail


# Reset Inventory
$function ctf:player/obj/inv/flag/start with storage ctf:game team$(team_num)