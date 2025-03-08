# /execute in minecraft:clone positioned -733 66 -284 run function animestruct:start {spacing: "6", width:"4",height:"13",length:"6",name:"door_red", dest:"-649 74 -241",from:"minecraft:clone",to:"minecraft:void"}
scoreboard objectives add animestruct.ticks dummy

summon minecraft:marker ~ ~ ~ {Tags:[animestruct_marker, new_marker]}
$data modify entity @e[tag=animestruct_marker,tag=new_marker,limit=1] data set value {width:"$(width)",height:"$(height)",length:"$(length)",name:"$(name)", dest:"$(dest)", spacing:"$(spacing)", from:"$(from)", to:"$(to)"}
scoreboard players set @e[tag=animestruct_marker,tag=new_marker,limit=1] animestruct.ticks -1
tag @e[tag=animestruct_marker,tag=new_marker] remove new_marker