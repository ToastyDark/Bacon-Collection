# Sends mail $(index) from mail:temporary_mail in chat.


# /tellraw @s [{"storage":"mail:temporary_mail","nbt":"Mail[1]"}]
# /data remove storage mail:temporary_mail Mail[0]
$tellraw @s [{"text":"$(index). ", "color":"white"},{"text":"[Delete] ","color":"red", "clickEvent":{"action":"run_command","value":"/function mail:player/delete_mail {index:$(index)}"}},{"color":"gold","storage":"mail:temporary_mail","nbt":"Mail[$(index)]"}]