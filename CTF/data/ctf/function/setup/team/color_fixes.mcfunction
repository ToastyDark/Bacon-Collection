# Green to Lime
$execute if data storage ctf:game team$(team_num){flag_color:green} run data modify storage ctf:game team.$(team_num).flag_color set value lime
$execute if data storage ctf:game team$(team_num){ops_flag_color:green} run data modify storage ctf:game team.$(team_num).ops_flag_color set value lime

# Dark Green to Green
$execute if data storage ctf:game team$(team_num){flag_color:dark_green} run data modify storage ctf:game team.$(team_num).flag_color set value green
$execute if data storage ctf:game team$(team_num){ops_flag_color:dark_green} run data modify storage ctf:game team.$(team_num).ops_flag_color set value green