scoreboard objectives add mail.misc dummy
scoreboard objectives add mail.settings.mail_per_page dummy

# Default to 5 mail per page
execute as @a unless score @s mail.settings.mail_per_page = @s mail.settings.mail_per_page run scoreboard players set @s mail.settings.mail_per_page 5