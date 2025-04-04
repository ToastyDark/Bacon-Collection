$execute store result storage ctf:game team$(team_num).temp_flag_slot int 1 run scoreboard players get $ctf_flag_slot_temp value

# Start when slot counter is 0
$execute if score $ctf_flag_slot_temp value matches 0.. run item replace entity @s container.$(temp_flag_slot) with minecraft:$(ops_flag_color)_wool[max_stack_size=1]

# Stop if filled all
execute if score $ctf_flag_slot_temp value matches 36.. run return run scoreboard players reset $ctf_flag_slot_temp value

# Repeat loop until stop
scoreboard players add $ctf_flag_slot_temp value 1
$function ctf:player/obj/inv/flag/loop with storage ctf:game team$(team_num)