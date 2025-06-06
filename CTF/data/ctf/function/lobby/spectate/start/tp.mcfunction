# Tp players to Spectator Gallery
$execute in $(dimension) run tp @s $(spawn_x) $(spawn_y) $(spawn_z) $(spawn_rx) $(spawn_ry)

# Play Sound after tp
$playsound minecraft:block.beacon.power_select master @s $(spawn_x) $(spawn_y) $(spawn_z) 2 1.4 1
$playsound minecraft:entity.warden.attack_impact master @s $(spawn_x) $(spawn_y) $(spawn_z) 1 0.5 1

# Set to Spectator (Temp?)
gamemode spectator @s