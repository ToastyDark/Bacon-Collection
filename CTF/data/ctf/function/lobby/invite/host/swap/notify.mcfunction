$scoreboard players set @a[scores={id=$(invite_active)}] actionbar_cd 1
$title @a[scores={id=$(invite_active)}] actionbar {"text":"You are now hosting the CTF Lobby","color":"gold"}
#
$execute as @a[scores={id=$(invite_active)}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.9 0.1