# Summon Ray
summon area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [ctf_bomb_ray] }

# Position the ray at the caster's eyes
execute anchored eyes rotated as @s run tp @n[tag=ctf_bomb_ray] ^ ^ ^ ~ ~

# Procress the ray
execute as @n[tag=ctf_bomb_ray] run function ctf:player/click/ray/process