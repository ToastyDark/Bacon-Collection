
# Summon particle lol
particle minecraft:composter ~ ~ ~ 0 0 1 1 100 force

# Remove 1 from timer
scoreboard players remove @s animestruct.ticks 1

# Timer is 0, so move to next frame

$execute if score @s animestruct.ticks matches ..0 run tp ~$(spacing) ~ ~

# -- Remove Yourself & Return
 execute if score @s animestruct.ticks matches ..0 unless block ~ ~ ~ stripped_warped_hyphae run kill @s

# -- Store new frame timer
$execute if score @s animestruct.ticks matches ..0 run execute store result score @s animestruct.ticks run data get block ~-$(spacing) ~-2 ~ Items
