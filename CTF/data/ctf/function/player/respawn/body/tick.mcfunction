# Add to Timer
function ctf:player/respawn/body/timer/add

# Check if body should sink
function ctf:player/respawn/body/timer/get_respawn_time
execute if score $body_age temp >= $sink_time temp run function ctf:player/respawn/body/sink