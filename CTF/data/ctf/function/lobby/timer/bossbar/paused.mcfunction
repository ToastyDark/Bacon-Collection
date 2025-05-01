# Stop is mazgen is active
execute if data storage ctf:temp {loading_map:active} run return fail

# Stop if map just finished loading
execute if data storage ctf:temp {loading_map:done} run return fail
execute if data storage ctf:temp {loading_map_done:true} run return fail

bossbar set ctf:lobby_timer name ["",{"text":"Timer Paused at: ","bold":true,"color":"#f32f08"},{"score":{"name":"$ctf_lobby_time","objective":"value"},"bold":true,"color":"#e0a308"}]