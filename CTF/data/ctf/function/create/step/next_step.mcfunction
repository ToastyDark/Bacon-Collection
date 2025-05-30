# Stop if on cooldown
#execute if entity @s[scores={ctf_create_click=1..}] run return fail

# Add to cooldown
#scoreboard players set @s ctf_create_click 1


# Move the player up to the next step once one is completed
scoreboard players add @s ctf_create_step 1

# Completion Sound
execute unless entity @s[scores={ctf_create_step=10}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute unless entity @s[scores={ctf_create_step=10}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.3

# Display next instructions
$execute if entity @s[scores={ctf_create_step=1}] run return run function ctf:create/set_spawnpoint/instruct with storage ctf:temp map_create_data.player.$(player_id)
execute if entity @s[scores={ctf_create_step=2}] run return run function ctf:create/set_flag/instruct
execute if entity @s[scores={ctf_create_step=3}] run return run function ctf:create/set_bombsite/instruct
$execute if entity @s[scores={ctf_create_step=4}] run return run function ctf:create/set_spawnpoint/instruct with storage ctf:temp map_create_data.player.$(player_id)
execute if entity @s[scores={ctf_create_step=5}] run return run function ctf:create/set_flag/instruct
execute if entity @s[scores={ctf_create_step=6}] run return run function ctf:create/set_bombsite/instruct
execute if entity @s[scores={ctf_create_step=7}] run return run function ctf:create/set_bomb/instruct
execute if entity @s[scores={ctf_create_step=8}] run return run function ctf:create/set_kit_data/instruct
$execute if entity @s[scores={ctf_create_step=9}] run return run function ctf:create/set_display_name/instruct with storage ctf:temp map_create_data.player.$(player_id)
$execute if entity @s[scores={ctf_create_step=10}] run return run function ctf:create/done/main with storage ctf:temp map_create_data.player.$(player_id)