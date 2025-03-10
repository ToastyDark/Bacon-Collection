# Swap
# Play Swap Sound
#execute at @s run playsound minecraft:entity.armadillo.scute_drop

# Give Items
forceload add ~ ~
$function ctf:player/kit/give/start with storage ctf:game team$(team_num)

# Display
$function ctf:player/kit/give/display_name with storage ctf:game team$(team_num)