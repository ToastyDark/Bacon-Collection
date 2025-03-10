# Team Message
$execute as @a[team=ctf_team$(team_num)] run function ctf:game/bomb/take/msg/team

# Ops Message
$execute as @a[team=ctf_team$(team_ops)] run function ctf:game/bomb/take/msg/ops