execute store result storage ctf:game bomb.temp_bomb_slot int 1 run scoreboard players get $ctf_bomb_slot_temp value

# Start when slot counter is 0
$execute if score $ctf_bomb_slot_temp value matches 0.. run item replace entity @s container.$(temp_bomb_slot) with minecraft:tnt[max_stack_size=1,consumable={consume_seconds:1000000,animation:"spear",has_consume_particles:false}]

# Stop if filled all
execute if score $ctf_bomb_slot_temp value matches 36.. run return run scoreboard players reset $ctf_bomb_slot_temp value

# Repeat loop until stop
scoreboard players add $ctf_bomb_slot_temp value 1
function ctf:player/obj/inv/bomb/loop with storage ctf:game bomb