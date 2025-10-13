# Sink Body
execute if score $body_age temp < $kill_time temp run tp @s ~ ~-.02 ~

# Check if body should be killed
execute if score $body_age temp >= $kill_time temp run function ctf:player/respawn/body/kill