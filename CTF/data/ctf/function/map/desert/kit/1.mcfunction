# Notif
execute unless entity @s[scores={ctf_flag_capture_cd=1..}] run title @s actionbar ["",{"text":"Kit: ","bold": true,"color": "gold"},{"text":"Blitz","bold":true,"color":"#086ec7"}]

# Give Items
item replace entity @s hotbar.0 with iron_sword