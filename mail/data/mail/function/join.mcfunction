scoreboard players set @s mail.login 0
execute if score @s mail.settings.join_message matches 1 run tellraw @s [{"text":"[Mail Settings] ", "color":"dark_aqua", "clickEvent":{"action":"run_command","value":"/function mail:use/settings"}}]
execute if score @s mail.settings.join_message matches 1 run function mail:use/mail