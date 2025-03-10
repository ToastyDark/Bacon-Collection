# Remove from Queue
tag @s remove ctf_queue

# Join Game
tag @s add ctf_player

# Join Team
$team join ctf_team$(team_num)

# Msg
$title @s actionbar ["",{"text":"You have joined ","bold": true,"color": "blue"},{"text":"Team $(color)","bold":true,"color":"$(color)"}]


# Add 1 to Counts
scoreboard players add $ctf_player_count value 1
$scoreboard players add $ctf_team$(team_num)_count value

# Set Next Random Join
scoreboard players add $ctf_team_join_next value 1
execute if score $ctf_team_join_next value matches 3.. run scoreboard players set $ctf_team_join_next value 1