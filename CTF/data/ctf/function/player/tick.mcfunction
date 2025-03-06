# Check Queue
function ctf:player/queue/check

# Crouch Timer
function ctf:player/crouch/tick

# Check if player died
execute if entity @s[tag=ctf_died] run function ctf:game/respawn/start

# Swap Kit
function ctf:player/kit/swap with storage ctf:game