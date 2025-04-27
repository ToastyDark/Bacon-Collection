$say Removed mail #$(index)  temporary code /j


$data modify storage mail:temporary_check delete_index set value $(index)
$tellraw @s [{"text":"Really delete \"", "color":"white"}, {"color":"gold","storage":"mail:temporary_mail","nbt":"Mail[$(index)]"}, {"text":"\"? ", "color":"white"},{"text":"[Delete] ","color":"red", "clickEvent":{"action":"run_command","value":"/function mail:search/run_on_mail_of_user {\"function\":\"\\\"mail:player/storage_delete_single_mail\\\"\"}"}}]