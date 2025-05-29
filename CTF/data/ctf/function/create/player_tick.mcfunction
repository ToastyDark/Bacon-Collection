say hi

# Step 1 - ( Set Team 1 Spawns)
$execute if entity @s[scores={ctf_create_step=1}] run function ctf:create/set_spawnpoint/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 2 - ( Team 1 Flag)
$execute if entity @s[scores={ctf_create_step=2}] run function ctf:create/set_flag/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 3 - ( Team 1 Bombsites)
$execute if entity @s[scores={ctf_create_step=3}] run function ctf:create/set_bombsite/try with storage ctf:temp map_create_data.player.$(temp_player)



# Step 4 - ( Team 2 Spawns )
$execute if entity @s[scores={ctf_create_step=4}] run function ctf:create/set_spawnpoint/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 5 - ( Team 2 Flag )
$execute if entity @s[scores={ctf_create_step=5}] run function ctf:create/set_flag/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 6 - ( Team 2 Bombsites) 
$execute if entity @s[scores={ctf_create_step=6}] run function ctf:create/set_bombsite/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 7 - ( Bomb Location)
$execute if entity @s[scores={ctf_create_step=7}] run function ctf:create/set_bomb/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 8 - ( Kit Data Location )
$execute if entity @s[scores={ctf_create_step=8}] run function ctf:create/set_kit_data/try with storage ctf:temp map_create_data.player.$(temp_player)


# Step 9 - ( Set Display Name )
$execute if entity @s[scores={ctf_create_step=9}] run function ctf:create/set_display_name/test with storage ctf:temp map_create_data.player.$(temp_player)