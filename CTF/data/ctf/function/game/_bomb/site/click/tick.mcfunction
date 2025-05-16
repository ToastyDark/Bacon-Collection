# ---------- Run plant bomb check ----------
execute unless entity @s[tag=ctf_bomb_planted] run function ctf:game/_bomb/plant/tick


# MSG
execute if entity @a[tag=ctf_has_bomb] run return run function ctf:game/_bomb/plant/msg/planting
function ctf:game/_bomb/diffuse/msg/diffusing