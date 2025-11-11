title @a[tag=ctf_has_bomb] actionbar {"text":"You have delivered the bomb!","bold": true, "color": "green"}
$function ctf:game/flag/capture/sound with storage ctf:game team$(team_ops)
$execute as @a[tag=ctf_player,team=ctf_team$(team_ops),tag=!ctf_has_bomb] run title @s actionbar {"text":"A teammate delivered the bomb","bold": true, "color": "green"}
$execute at @s as @a[tag=ctf_player,team=ctf_team$(team_ops),distance=55..] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.2 1 0.1