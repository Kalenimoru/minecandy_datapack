scoreboard players operation @s tntrun_player_rank = 存活人數 tntrun_player_rank
scoreboard players remove 存活人數 tntrun_player_rank 1
tellraw @a[tag=tntrun_join_game] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"selector":"@s"},{"text":"以第","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun_player_rank"}},{"text":"名的身分被淘汰了!","bold":true,"color":"yellow"}]
title @s title {"text":"你被淘汰了","bold":true,"color":"yellow"}
title @s subtitle [{"text":"你是第","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun_player_rank"}},{"text":"名!","bold":true,"color":"yellow"}]
gamemode adventure @s
clear @s
effect clear @s
gamemode survival @s
effect give @s minecraft:slow_falling 1 1 true
teleport @s -1002 0 -949 0 0
tag @s remove tntrun_living_player