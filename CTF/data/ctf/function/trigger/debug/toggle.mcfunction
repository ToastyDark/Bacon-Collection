scoreboard players reset @s ctf.debug

# Toggle on
execute if data storage ctf:game {debug:false} run return run function ctf:trigger/debug/on

# Toggle off
function ctf:trigger/debug/off