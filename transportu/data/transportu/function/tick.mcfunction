# The location and particle color are stored in the item's custom_data component.
# Example give command:
# give @p potion[potion_contents={custom_color:16727466},custom_name='["",{"text":"Potion of Teleportation","italic":false}]',lore=['["",{"text":"Destination: Blond\'s Potion Facility","italic":false,"color":"blue"}]','["",{"text":"(-1232 101 1392)","italic":false,"color":"blue"}]'],rarity=uncommon,hide_additional_tooltip={},enchantment_glint_override=true,custom_data={destination:potion,location:"-879 152 1971", color:"color:[1.0,0.24,0.67]"}]

execute as @a run function transportu:check_should_teleport

# Triggers
execute as @a run function transportu:trigger/tick