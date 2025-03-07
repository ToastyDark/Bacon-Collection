# Start Loop
execute unless score $ctf_flag_slot_temp value matches 0.. run scoreboard players set $ctf_flag_slot_temp value 0
execute store result storage ctf:game team1.temp_flag_slot int 1 run scoreboard players get $ctf_flag_slot_temp value


execute if entity @s[team=ctf_team1] run function ctf:player/obj/inv/flag/loop with storage ctf:game team1
execute if entity @s[team=ctf_team2] run function ctf:player/obj/inv/flag/loop with storage ctf:game team2