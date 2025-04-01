# Toggle On
execute if entity @s[scores={ctf_music=1}] run return run function ctf:lobby/music/toggle/off

# Toggle Off
function ctf:lobby/music/toggle/on