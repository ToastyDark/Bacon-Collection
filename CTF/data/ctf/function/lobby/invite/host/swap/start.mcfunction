# Set new host
execute store result storage ctf:lobby invite_active int 1 run scoreboard players get @r[tag=ctf_queue] id

# Notify
function ctf:lobby/invite/host/swap/notify with storage ctf:lobby