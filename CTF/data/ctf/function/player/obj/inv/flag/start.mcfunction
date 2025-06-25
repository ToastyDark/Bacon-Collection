# Get Armor
#$function ctf:player/obj/inv/flag/armor with storage ctf:game team$(team_num)

# Clear previous inv
clear @s

# Remove Wool from ground
$execute at @s run kill @e[distance=..7,type=item,nbt={Item:{id:"minecraft:$(ops_flag_color)_wool"}}]

# Start Loop
execute unless score $ctf_flag_slot_temp value matches 0.. run scoreboard players set $ctf_flag_slot_temp value 0
$execute store result storage ctf:game team$(team_num).temp_flag_slot int 1 run scoreboard players get $ctf_flag_slot_temp value


$function ctf:player/obj/inv/flag/loop with storage ctf:game team$(team_num)


# Replace Head
$item replace entity @s armor.head with minecraft:$(ops_flag_color)_wool[attribute_modifiers=[{id:"armor",type:"armor",amount:10,operation:"add_value",slot:"any"}],tooltip_display={hidden_components:["attribute_modifiers"]}] 1






