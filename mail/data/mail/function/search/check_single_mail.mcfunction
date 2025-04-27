# Runs a function $(function) with a macro argument that is the location of [mail:temporary_username name]'s mail

# Copy current username to 'check'
data modify storage mail:temporary_username check set from storage mail:temporary_username name

# Try copying the 'username' field of the current mail list to 'check'.
$execute store success storage mail:comparison_success success int 1 run data modify storage mail:temporary_username check set from storage mail:all_mail all_mail[$(index)].username

# If the value in "mail:comparison_success success" is 0, the values were the same, and so this is the correct mail.
#execute if data storage mail:comparison_success {success:0} run say Found mail at $(index)
$execute if data storage mail:comparison_success {success:0} run function $(function) {"index":"$(index)"}
execute if data storage mail:comparison_success {success:0} run scoreboard players set $check_mail_index mail.misc -1

# NOTE!!! if the function is malformed it doesnt show an erorr...