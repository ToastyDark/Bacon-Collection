# Stop if no game is being hosted
execute if data storage ctf:lobby {invite_active:false} run return fail

# Stop if host is still present
$execute if entity @a[scores={id=$(invite_active)}] at ToastyDark run playsound minecraft:block.note_block.bass master ToastyDark ~ ~ ~ 1 0.5 1