# Remove from Queue
tag @s remove ctf_queue

# Join Team
$team join ctf_team$(team_num)

# Msg
$title @s actionbar ["",{"text":"You have joined ","bold": true,"color": "blue"},{"text":"Team $(color)","bold":true,"color":"$(color)"}]