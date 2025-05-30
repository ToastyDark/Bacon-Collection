# Based messages whether random teams are enabled or not
execute if data storage ctf:settings {random_teams:false} run function ctf:lobby/queue/msg/half_random

execute unless data storage ctf:settings {random_teams:false} run function ctf:lobby/queue/msg/full_random