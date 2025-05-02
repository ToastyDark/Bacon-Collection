# Swap
# Play Swap Sound
execute at @s run playsound minecraft:entity.armadillo.scute_drop

# Give Items
clear @s
forceload add ~ ~
$function ctf:player/kit/give/start with storage ctf:game team$(team_num)

# Insta Heal (For kits that change your max health
effect give @s minecraft:instant_health 1 50 true


# Display
$function ctf:player/kit/give/display_name with storage ctf:game team$(team_num)