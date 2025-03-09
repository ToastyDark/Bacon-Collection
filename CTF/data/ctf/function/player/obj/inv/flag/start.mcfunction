# Start Loop
execute unless score $ctf_flag_slot_temp value matches 0.. run scoreboard players set $ctf_flag_slot_temp value 0
$execute store result storage ctf:game team$(team_num).temp_flag_slot int 1 run scoreboard players get $ctf_flag_slot_temp value


$function ctf:player/obj/inv/flag/loop with storage ctf:game team$(team_num)