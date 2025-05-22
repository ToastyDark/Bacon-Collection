
# Default to 5 mail per page
execute as @a unless score @s mail.settings.mail_per_page = @s mail.settings.mail_per_page run scoreboard players set @s mail.settings.mail_per_page 5

# Default to showing mail on login
execute as @a unless score @s mail.settings.join_message = @s mail.settings.join_message run scoreboard players set @s mail.settings.join_message 1

# Default to sending notifications for new mail
execute as @a unless score @s mail.settings.notify_of_mail = @s mail.settings.notify_of_mail run scoreboard players set @s mail.settings.notify_of_mail 1


execute as @a if score @s mail.login matches 1.. run function mail:join