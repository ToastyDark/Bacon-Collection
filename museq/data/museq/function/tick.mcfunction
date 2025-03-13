# Give everyone unique IDs
!execute as @a unless score @s museq.id matches 1.. run function museq:id/give

# Tick all of the music everyone is listening to
!execute as @a run function museq:search/find_song
