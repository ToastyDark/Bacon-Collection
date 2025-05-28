# Create Voicechat Groups
function voicechat:ctf/group/create

# Assign voice chats to players
execute as @a[team=ctf_team1] run function voicechat:ctf/join/team_1
execute as @a[team=ctf_team2] run function voicechat:ctf/join/team_2