# Finds the song associated with this player in 'museq:players', and ticks it.

# Copy the museq:players storage to a temporary storage location, since the search deletes entries in the players list.
data modify storage museq:temp_check players set from storage museq:players players

function museq:search/find_song_recursive