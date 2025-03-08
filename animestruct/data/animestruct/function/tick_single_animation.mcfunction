
# Summon particle lol
particle minecraft:composter ~ ~ ~ 0 0 1 1 100 force

# Remove 1 from timer
scoreboard players remove @s animestruct.ticks 1

# Timer is 0, so move to next frame

$execute if score @s animestruct.ticks matches 0 run tp ~$(spacing) ~ ~

execute if score @s animestruct.ticks matches -1 run scoreboard players set @s animestruct.ticks 0

# -- Remove Yourself & Return
execute if score @s animestruct.ticks matches ..0 unless block ~ ~ ~ stripped_warped_hyphae run kill @s
execute unless block ~ ~ ~ stripped_warped_hyphae run return 1
execute unless block ~ ~ ~ stripped_warped_hyphae run say EXIT

 # -- Clone new animation
$execute if score @s animestruct.ticks matches ..0 run execute at @s run clone ~ ~2 ~ ~$(width) ~$(height) ~$(length) $(dest)

# -- Run command next to lectern
execute if score @s animestruct.ticks matches ..0 run setblock ~ ~-3 ~ redstone_block
execute if score @s animestruct.ticks matches ..0 run setblock ~ ~-3 ~ air

# -- Store new frame timer
$execute if score @s animestruct.ticks matches ..0 run execute store result score @s animestruct.ticks run data get block ~-$(spacing) ~-2 ~ Book.components.minecraft:writable_book_content.pages[0].raw