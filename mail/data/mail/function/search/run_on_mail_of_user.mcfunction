scoreboard players set $check_mail_index mail.misc 0

data modify storage mail:temporary_check index set value 0
$data modify storage mail:temporary_check function set value $(function)

function mail:search/run_on_mail_of_user_recursive