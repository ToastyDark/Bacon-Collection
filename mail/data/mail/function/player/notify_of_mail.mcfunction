# Check if username matches

# Copy current recipient username to 'check'
data modify storage mail:temporary_username check set from storage mail:temporary_username persistent_name

# Try copying the current player's name to 'check'.
function mail:player/get_username
execute store success storage mail:comparison_success success int 1 run data modify storage mail:temporary_username check set from storage mail:temporary_username name

# If the value in "mail:comparison_success success" is 0, the values were the same, and so this is the correct user.
execute if data storage mail:comparison_success {success:0} run tellraw @s [{"text":"You've received new mail! \"","color": "white"},{"storage": "mail:temporary_check", "nbt": "message","color": "gold"},{"text":"\"","color": "white"}]
execute if data storage mail:comparison_success {success:0} run playsound ambient.cave
