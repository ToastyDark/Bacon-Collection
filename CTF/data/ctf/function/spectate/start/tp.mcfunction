# Tp players to Spectator Gallery
$execute in $(dimension) run tp @s $(spawn_x) $(spawn_y) $(spawn_z)

# Play Sound after tp
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 2 1.4 1
playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0.5 1