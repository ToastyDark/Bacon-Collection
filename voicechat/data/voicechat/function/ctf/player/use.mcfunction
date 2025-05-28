# Leave Voice Chat
execute if entity @s[tag=ctf_vc] run return run function voicechat:ctf/player/disable

# Otherwise, Join
function voicechat:ctf/player/enable