# Gets mail from all_mail into temporary_mail for this username

# Clear mail
data remove storage mail:temporary_mail Mail

# Store usernmae 
function mail:player/get_username

# Copy the mail (using mail:player/storage_copy_mail_to_temp)
function mail:search/run_on_mail_of_user {"function":"\"mail:player/storage_copy_mail_to_temp\""}