# Store the contents of the enderchest on the previous frame into 'current_enderchest.$(id)'
$data modify storage ctf:temp current_enderchest.$(id) set from storage ctf:temp last_enderchest.$(id)

# Check if the player's enderchest matches 'current_enderchest.$(id)'
$execute store success storage ctf:temp enderchest_changed int 1 run data modify storage ctf:temp current_enderchest.$(id) set from entity @s EnderItems

# If they don't match, save the current layout
execute if data storage ctf:temp {enderchest_changed:1} run function ctf:lobby/edit_kit/save_layout

# Store the current enderchest into 'last_enderchest.$(id)'
$data modify storage ctf:temp last_enderchest.$(id) set from entity @s EnderItems