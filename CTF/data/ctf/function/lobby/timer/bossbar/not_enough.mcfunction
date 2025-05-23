# Stop if not right time
execute if score $ctf_lobby_time value matches 21.. run return fail

# Stop if debug is enabled
execute if data storage ctf:game {debug:true} run return fail

# Change Bossbar
bossbar set ctf:lobby_timer name ["",{"text":"Timer Paused: ","bold":true,"color":"#f32f08"},{"text":"Not Enough Players","bold":true,"color":"#e0a308"}]