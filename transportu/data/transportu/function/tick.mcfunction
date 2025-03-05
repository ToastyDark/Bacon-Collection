# Pass off to 'determine_location' so we can run using @s and avoid running @a a bajillion times
execute in minecraft:minigames as @a[scores={POTTracker=1}] at @s run function transportu:determine_location
execute in minecraft:minigames as @a[scores={POTTracker=1..}] run scoreboard players set @s POTTracker 0