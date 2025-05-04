# Who should be reset of clicks
execute as @e[type=armadillo,tag=ctf_bombsite,scores={ctf_bombsite_click=1..}] run function ctf:game/_bomb/site/click/reset/check_reset
execute as @a[scores={ctf_bombsite_click=1..}] run function ctf:game/_bomb/site/click/reset/check_reset