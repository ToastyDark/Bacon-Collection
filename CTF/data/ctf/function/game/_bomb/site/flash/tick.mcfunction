# Add 1 to timer
scoreboard players add $bombsite_flash_timer value 1
effect give @s glowing 5 5 true

# Flash Red
execute if score $bombsite_flash_timer value matches 1..5 run team modify z_ctf_bombsite color red
execute if score $bombsite_flash_timer value matches 6..10 run team modify z_ctf_bombsite color white


# Reset if Max
execute if score $bombsite_flash_timer value matches 10.. run scoreboard players reset $bombsite_flash_timer value