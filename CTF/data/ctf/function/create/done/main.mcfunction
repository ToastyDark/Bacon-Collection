# Confirmation
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 0.7

$tellraw @s ["",{"text":"Your map ","color":"green"},{"nbt":"display_name","storage":"$(map_id)","interpret":true,"bold":true},{"text":" has been successfully added!","color":"dark_green"}]


# Reset
scoreboard players reset @s ctf_create_step