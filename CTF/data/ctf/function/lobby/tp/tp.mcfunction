execute in void run tp @s 38 79 -103 -180 10

# Extra commands after tp
function ctf:lobby/tp/more

# Remove slowfalling if fell in voice
schedule function ctf:lobby/fall_check/remove_effect 2t append