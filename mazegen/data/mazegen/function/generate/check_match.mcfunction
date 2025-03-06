# TODO: Make it so that it's not hardcoded to 7 by 7 tiles

# Check if the current tile matches its' surroundings. (air is a wildcard)
# Returns 1 if match, 0 if no.
execute unless blocks ~ ~ ~3 ~ ~ ~3 ~ ~ ~4 all unless block ~ ~ ~4 air run return 0
execute unless blocks ~3 ~ ~ ~3 ~ ~ ~4 ~ ~ all unless block ~4 ~ ~ air run return 0
execute unless blocks ~ ~ ~-3 ~ ~ ~-3 ~ ~ ~-4 all unless block ~ ~ ~-4 air run return 0
execute unless blocks ~-3 ~ ~ ~-3 ~ ~ ~-4 ~ ~ all unless block ~-4 ~ ~ air run return 0

# Check for sides that require exact matches
execute unless blocks ~ ~ ~3 ~ ~ ~3 ~ ~ ~4 all if block ~ ~ ~4 #mazegen:ignore_wildcards run return 0
execute unless blocks ~3 ~ ~ ~3 ~ ~ ~4 ~ ~ all if block ~4 ~ ~ #mazegen:ignore_wildcards run return 0
execute unless blocks ~ ~ ~-3 ~ ~ ~-3 ~ ~ ~-4 all if block ~ ~ ~-4 #mazegen:ignore_wildcards run return 0
execute unless blocks ~-3 ~ ~ ~-3 ~ ~ ~-4 ~ ~ all if block ~-4 ~ ~ #mazegen:ignore_wildcards run return 0

execute unless blocks ~ ~ ~3 ~ ~ ~3 ~ ~ ~4 all if block ~ ~ ~3 #mazegen:ignore_wildcards run return 0
execute unless blocks ~3 ~ ~ ~3 ~ ~ ~4 ~ ~ all if block ~3 ~ ~ #mazegen:ignore_wildcards run return 0
execute unless blocks ~ ~ ~-3 ~ ~ ~-3 ~ ~ ~-4 all if block ~ ~ ~-3 #mazegen:ignore_wildcards run return 0
execute unless blocks ~-3 ~ ~ ~-3 ~ ~ ~-4 ~ ~ all if block ~-3 ~ ~ #mazegen:ignore_wildcards run return 0

return 1