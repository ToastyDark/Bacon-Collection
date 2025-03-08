# Notif
# Stop if player captured flag
execute if entity @s[scores={ctf_flag_capture_cd=1..}] run return fail

# Display
$title @s actionbar ["",{"text":"Kit: ","bold": true,"color": "gold"},{"nbt":"Items[26].components.\"minecraft:custom_name\"","block":"~$(kit_num) -63 81","interpret":true}]