# Give everyone unique IDs
execute as @a unless score @s museq.id matches 1.. run function museq:id

# Tick all of the music everyone is listening to
execute as @a run function museq:find_song
