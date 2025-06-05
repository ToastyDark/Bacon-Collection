# Mazegen Tick
#function mazegen:generate/tick_generate

# Generating, but no outstanding tiles are left... So stop generating
execute if score $generating mazegen matches 1 unless entity @e[type=marker, tag=mazegen_outstanding_tile] run function mazegen:tickrate/set_tickrate_normal
execute if score $generating mazegen matches 1 unless entity @e[type=marker, tag=mazegen_outstanding_tile] run say Finished generating maze.
execute if score $generating mazegen matches 1 unless entity @e[type=marker, tag=mazegen_outstanding_tile] run scoreboard players set $generating mazegen 0