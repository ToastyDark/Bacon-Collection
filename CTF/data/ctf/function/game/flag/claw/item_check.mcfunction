# Check if Holding Flag Claw
execute if data entity @s SelectedItem.components.minecraft:custom_data{ctf_flag_claw:1b} run function ctf:game/flag/claw/tick

# Check if Holding Slow Flag Claw
execute if data entity @s SelectedItem.components.minecraft:custom_data{ctf_slow_shears:1b} run function ctf:game/flag/claw/tick