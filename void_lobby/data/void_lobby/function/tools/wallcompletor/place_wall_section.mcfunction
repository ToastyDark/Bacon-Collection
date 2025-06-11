$execute positioned $(x) $(y) $(z) positioned ~-$(offset) ~ ~ run clone ~ ~1 ~ ~ ~30 ~ ~$(offset) ~1 ~

$execute positioned $(x) $(y) $(z) if block ~-$(offset) ~ ~ red_wool run scoreboard players set @s wallcompletor.self 1

$clone $(x) $(clone_start_y) $(z) $(x) $(clone_end_y) $(z) ~ ~1 ~