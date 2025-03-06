# TODO: Make it so that it's not hardcoded to 7 by 7 tiles

# Check if the current tile matches its' surroundings. (air on the outside is a wildcard) (white concrete is a wildcard)
# Returns 1 if match, 0 if no.
execute unless blocks ~ ~ ~3 ~ ~ ~3 ~ ~ ~4 all unless block ~ ~ ~4 air unless block ~ ~ ~3 white_concrete unless block ~ ~ ~4 white_concrete run return 0
execute unless blocks ~3 ~ ~ ~3 ~ ~ ~4 ~ ~ all unless block ~4 ~ ~ air unless block ~3 ~ ~ white_concrete unless block ~4 ~ ~ white_concrete run return 0
execute unless blocks ~ ~ ~-3 ~ ~ ~-3 ~ ~ ~-4 all unless block ~ ~ ~-4 air unless block ~ ~ ~-3 white_concrete unless block ~ ~ ~-4 white_concrete run return 0
execute unless blocks ~-3 ~ ~ ~-3 ~ ~ ~-4 ~ ~ all unless block ~-4 ~ ~ air unless block ~-3 ~ ~ white_concrete unless block ~-4 ~ ~ white_concrete run return 0

return 1