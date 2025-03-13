# Search for a compound in the storage 'temp' that matches this player's id.
# EX: temp: [{id:0, song:"a"}, {id:1, song:"b"}]
# If the player's ID is '1', this function runs tick_song with {id:1, song:"b"}

# Store ID to compare
execute store result score @s museq.temp run data get storage museq:temp_check players[0].id

# match yayy
execute if score @s museq.id = @s museq.temp at @s run function museq:tick_song with storage museq:temp_check players[0]

# No match, remove this item and try again
execute unless score @s museq.id = @s museq.temp run data remove storage museq:temp_check players[0]
execute unless score @s museq.id = @s museq.temp run function museq:find_song_recursive