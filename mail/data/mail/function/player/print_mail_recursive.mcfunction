# check if the function should stop
execute if score $mail_index mail.misc >= $mail_amount_display mail.misc run return 1

# store current index
execute store result storage mail:temporary_print index int 1 run scoreboard players get $mail_index mail.misc
# print mail
function mail:player/print_single_mail with storage mail:temporary_print
# recursive part
scoreboard players add $mail_index mail.misc 1
function mail:player/print_mail_recursive