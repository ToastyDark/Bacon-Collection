# Store this player's mail and mail settings into mail:temporary_mail

# Given the display count (settings) and page number

scoreboard players operation $mail_amount_display mail.misc = @s mail.settings.mail_per_page
$scoreboard players set $mail_index mail.misc $(index)