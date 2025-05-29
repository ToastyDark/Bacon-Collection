tag @s remove ctf_door_crushed

# Message
tellraw @a ["",{"selector":"@s"},{"text":" was crushed by "},{"text":"The Castle Doors","bold":true,"color":"gold"}]

# Respawn Start
function ctf:player/respawn/start
