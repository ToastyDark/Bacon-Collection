# Summon Ray
summon area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [ctf_flag_claw_ray] }

# Set Player ID of Ray
scoreboard players operation @n[type=area_effect_cloud] id = @s id
execute store result storage ctf:temp flag_claw.id int 1 run scoreboard players get @s id
# Store players current team
execute if entity @s[team=ctf_team1] run data modify storage ctf:temp flag_claw.ops_team_num set value 2
execute if entity @s[team=ctf_team2] run data modify storage ctf:temp flag_claw.ops_team_num set value 1


# Position the ray at the caster's eyes
execute anchored eyes rotated as @s run tp @n[tag=ctf_flag_claw_ray] ^ ^ ^ ~ ~

# Procress the ray
execute as @n[tag=ctf_flag_claw_ray] run function ctf:game/flag/claw/ray/process with storage ctf:temp flag_claw