scoreboard players reset @s ctf.music
# Toggle On
execute if entity @s[scores={ctf_music=0}] run return run function ctf:lobby/music/toggle/on

# Only Game
execute if entity @s[scores={ctf_music=1}] run return run function ctf:lobby/music/toggle/only_game


# Toggle Off
function ctf:lobby/music/toggle/off