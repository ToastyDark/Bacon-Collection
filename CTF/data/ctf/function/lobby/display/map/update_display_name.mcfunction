# Set Current Game's Map Display Name
$data modify storage ctf:game display_name set from storage ctf:map $(map) display_name

# Update Display
data modify entity @e[type=text_display,tag=ctf_map_display,limit=1] text set from storage ctf:game display_name