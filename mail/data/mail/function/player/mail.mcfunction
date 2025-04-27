# Store this player's mail and mail settings into mail:temporary_mail

# Given the display amount (settings) and start mail index, print a list of mail
scoreboard players operation $mail_amount_display mail.misc = @s mail.settings.mail_per_page
$scoreboard players set $mail_index mail.misc $(index)

function mail:player/print_mail_recursive