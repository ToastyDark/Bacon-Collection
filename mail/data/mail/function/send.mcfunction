$data modify storage mail:temporary_check message set value $(message)

# Store usernmae 
$data modify storage mail:temporary_username name set value $(recipient)
$data modify storage mail:temporary_username persistent_name set value $(recipient)


function mail:search/run_on_mail_of_user {"function":"\"mail:player/storage_append\""}

# There was no mailbox, so just make one
$execute if score $check_mail_index mail.misc >= $mail_amount_total mail.misc run data modify storage mail:all_mail all_mail append value {Mail:[$(message)],"username":$(recipient)}


# Notification
execute as @a if score @s mail.settings.notify_of_mail matches 1 run function mail:player/notify_of_mail with storage mail:temporary_check