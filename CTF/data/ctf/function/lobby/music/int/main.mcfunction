# If music is not on or off, set default
execute as @a unless entity @s[scores={ctf_music=0..}] run scoreboard players set @s ctf_music 1


# Check if music interaction clicked
execute as @e[type=interaction,tag=ctf_music_int] run function ctf:lobby/music/int/click

# Update Text
function ctf:lobby/music/int/update_text