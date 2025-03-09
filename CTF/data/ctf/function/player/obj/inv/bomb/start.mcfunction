# Start Loop
execute unless score $ctf_bomb_slot_temp value matches 0.. run scoreboard players set $ctf_bomb_slot_temp value 0
execute store result storage ctf:game bomb.temp_bomb_slot int 1 run scoreboard players get $ctf_bomb_slot_temp value


function ctf:player/obj/inv/bomb/loop with storage ctf:game bomb