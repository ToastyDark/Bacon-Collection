execute if score @s mail.settings.join_message matches 1 run scoreboard players set $new_setting mail.settings.join_message 0
execute if score @s mail.settings.join_message matches 0 run scoreboard players set $new_setting mail.settings.join_message 1
scoreboard players operation @s mail.settings.join_message = $new_setting mail.settings.join_message