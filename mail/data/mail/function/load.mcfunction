scoreboard objectives add mail.misc dummy
scoreboard objectives add mail.settings.mail_per_page dummy
scoreboard objectives add mail.settings.join_message dummy
scoreboard objectives add mail.settings.notify_of_mail dummy

scoreboard objectives add mail.login minecraft.custom:minecraft.leave_game

# Used for getting usernames
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
