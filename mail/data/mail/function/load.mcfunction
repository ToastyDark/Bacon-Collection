scoreboard objectives add mail.misc dummy
scoreboard objectives add mail.settings.mail_per_page dummy
scoreboard objectives add mail.settings.join_message dummy

scoreboard objectives add mail.login minecraft.custom:minecraft.leave_game

# Default to 5 mail per page
execute as @a unless score @s mail.settings.mail_per_page = @s mail.settings.mail_per_page run scoreboard players set @s mail.settings.mail_per_page 5

# Default to showing mail on login
execute as @a unless score @s mail.settings.join_message = @s mail.settings.join_message run scoreboard players set @s mail.settings.join_message 1

# Used for getting usernames
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
