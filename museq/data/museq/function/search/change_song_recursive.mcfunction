
# Store ID to compare
execute store result score @s museq.temp run data get storage museq:temp_check players[0].id

# match yayy
$execute if score @s museq.id = @s museq.temp at @s run data modify storage museq:temp_check players[0].song set value $(song)

# Copy this item to main storage, remove it from temp
data modify storage museq:players players insert 0 from storage museq:temp_check players[0]
data remove storage museq:temp_check players[0]

# If there's still items in the list, keep going
$execute if data storage museq:temp_check players[0] run function museq:search/change_song_recursive {song:"$(song)"}