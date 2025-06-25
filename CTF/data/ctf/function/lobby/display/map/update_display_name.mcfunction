# Placeholder Missing Map Name
data modify storage ctf:game display_name set value '["",{"text":"Map Name Missing","color":"red","bold":true}]'

# Set Current Game's Map Display Name
$data modify storage ctf:game display_name set from storage ctf:map $(map).display_name

# Update Display
data modify entity @e[type=text_display,tag=ctf_map_display,limit=1] text set value ["",{"text":"Map: ","color":"green"},{"nbt":"display_name","storage":"ctf:game","interpret":true}]