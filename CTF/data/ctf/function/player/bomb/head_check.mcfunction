# Stop if player hasn't touched head
execute if items entity @s armor.head tnt run return fail


# Reset Inventory
$function ctf:player/obj/inv/bomb/start with storage ctf:game team$(team_num)