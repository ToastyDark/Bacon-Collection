# Pass off to 'determine_location' so we can run using @s and avoid running @a a bajillion times
execute as @a[scores={POTTracker=1}] run function transportu:determine_location
execute as @a[scores={POTTracker=1..}] run scoreboard players set @s POTTracker 0