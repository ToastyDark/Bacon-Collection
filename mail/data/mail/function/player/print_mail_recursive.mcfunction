# Prints a quantity of mail from storage mail:temporary_mail 

# Store mail list count
execute store result score $mail_amount_total mail.misc run data get storage mail:temporary_mail Mail

# check if the function should stop

# -- stop since the page has ended
execute if score $mail_amount_display mail.misc matches ..0 run return 1
# -- stop since there's no more mail
execute if score $mail_index mail.misc >= $mail_amount_total mail.misc run return 2

# store current index
execute store result storage mail:temporary_print index int 1 run scoreboard players get $mail_index mail.misc
# print mail
function mail:player/print_single_mail with storage mail:temporary_print
# recursive part
scoreboard players add $mail_index mail.misc 1
scoreboard players remove $mail_amount_display mail.misc 1
function mail:player/print_mail_recursive