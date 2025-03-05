# Runs on a player who is should teleport.

# Potion Factory
execute if items entity @s weapon.* minecraft:potion[custom_data={destination:potion}] run function transportu:teleport {location:"1232 101 1392", color:"color:[1.0,0.24,0.67]"}

# The Mansion
execute if items entity @s weapon.* minecraft:potion[custom_data={destination:mansion}] run function transportu:teleport {location:"-1021 168 1707", color:"color:[0.69,0.12,0.19]"}

# Colorfall
execute if items entity @s weapon.* minecraft:potion[custom_data={destination:color}] run function transportu:teleport {location:"-1090 122 1000", color:"color:[1.0,0.24,0.19]"}

# Plots
execute if items entity @s weapon.* minecraft:potion[custom_data={destination:plots}] run function transportu:teleport {location:"930 98 2711", color:"color:[0.14,0.15,0.19]"}

# Garden
execute if items entity @s weapon.* minecraft:potion[custom_data={destination:garden}] run function transportu:teleport {location:"-878 150 1950", color:"color:[0.42,0.54,0.32]"}

