scoreboard players operation @s museq.id = $id museq.id
scoreboard players add $id museq.id 1

# Add to storage
execute store result storage museq:temp_add_new_person id int 1 run scoreboard players get @s museq.id
data modify storage museq:players players insert 0 from storage museq:temp_add_new_person