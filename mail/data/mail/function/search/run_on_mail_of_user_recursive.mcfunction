# Runs a function $(function) with a macro argument that is the location of [mail:temporary_username name]'s mail

# Check if there's no mail left
execute store result score $mail_amount_total mail.misc run data get storage mail:all_mail all_mail
execute if score $check_mail_index mail.misc >= $mail_amount_total mail.misc run return 2

# Check if this is the correct mail
function mail:search/check_single_mail with storage mail:temporary_check

# if mail was found
execute if score $check_mail_index mail.misc matches -1 run return 1

# Otherwise, continue
scoreboard players add $check_mail_index mail.misc 1
execute store result storage mail:temporary_check index int 1 run scoreboard players get $check_mail_index mail.misc