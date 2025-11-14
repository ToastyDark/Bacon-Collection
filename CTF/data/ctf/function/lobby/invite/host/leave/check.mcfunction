# Stop if no game is being hosted
execute if data storage ctf:lobby {invite_active:false} run return fail

# Stop if host is still present
$execute if entity @a[scores={id=$(invite_active)},tag=ctf_queue] run return fail

# Host is not present, swap host
function ctf:lobby/invite/host/swap/start