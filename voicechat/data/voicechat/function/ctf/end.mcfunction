# Kick players from Groups
execute as @a[tag=ctf_player] run function voicechat:ctf/leave/leave

# Remove Groups
function voicechat:ctf/group/remove