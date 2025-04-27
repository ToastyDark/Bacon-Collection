# Store this player's mail and mail settings into mail:temporary_mail

# Store mail list count
execute store result score $mail_amount_total mail.misc run data get storage mail:temporary_mail Mail

execute if score $mail_amount_total mail.misc matches 0 run tellraw @s [{"text":"You have no mail."}]
execute if score $mail_amount_total mail.misc matches 1 run tellraw @s [{"text":"You have "},{"score":{"name":"$mail_amount_total","objective":"mail.misc"}},{"text":" piece of mail!"}]
execute if score $mail_amount_total mail.misc matches 2.. run tellraw @s [{"text":"You have "},{"score":{"name":"$mail_amount_total","objective":"mail.misc"}},{"text":" pieces of mail!"}]

# Given the display amount (settings) and start mail index, print a list of mail
scoreboard players operation $mail_amount_display mail.misc = @s mail.settings.mail_per_page
$scoreboard players set $mail_index mail.misc $(index)

function mail:player/print_mail_recursive

# Next page
execute store result storage mail:temporary_print index int 1 run scoreboard players get $mail_index mail.misc
tellraw @s [{"text":">>> Next Page","color":"red", "clickEvent":{"action":"run_command","value":"/function mail:player/mail with storage mail:temporary_print"}}]