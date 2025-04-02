# Set Map
data modify storage ctf:temp debug_info.map set from storage ctf:game map

# Set Missing Message
data modify storage ctf:temp debug_info.missing set value '{"text":"MISSING","bold":true,"color":"red"}'
data modify storage ctf:temp debug_info.m set value '{"text":"M","bold":true,"color":"red"}'