execute if score @s mail.settings.notify_of_mail matches 1 run scoreboard players set $new_setting mail.settings.notify_of_mail 0
execute if score @s mail.settings.notify_of_mail matches 0 run scoreboard players set $new_setting mail.settings.notify_of_mail 1
scoreboard players operation @s mail.settings.notify_of_mail = $new_setting mail.settings.notify_of_mail

function mail:use/settings