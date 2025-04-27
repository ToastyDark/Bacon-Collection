scoreboard players set @s mail.login 0
execute if score @s mail.settings.join_message matches 1 run function mail:use/settings
execute if score @s mail.settings.join_message matches 1 run function mail:use/mail