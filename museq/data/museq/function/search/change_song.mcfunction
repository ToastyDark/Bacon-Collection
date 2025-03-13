# Copy the museq:players storage to a temporary storage location, since we need to clear the main players list
data modify storage museq:temp_check players set from storage museq:players players
data remove storage museq:players players

$function museq:search/change_song_recursive {song:"$(song)"}