# 把玩家的名次設為存活人數
scoreboard players operation @s tntrun.player_rank = 存活人數 tntrun.living_player_count

# 廣播一些訊息
tellraw @a[scores={tntrun.living=1}] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"第","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun.player_rank"},"color": "gold"},{"text":"名:","bold":true,"color":"yellow"},{"selector":"@s","color": "gold"},{"text":"。存活時間:","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun.player_living_time_in_second"},"color": "gold"},{"text":"秒。","bold":true,"color":"yellow"}]
title @s title [{"text":"遊戲結束!!","bold":true,"color":"yellow"},{"text":"存活","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun.player_living_time_in_second"},"color":"gold"},{"text":"秒","bold":true,"color":"yellow"}]
title @s subtitle [{"text":"名次:","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"tntrun.player_rank"},"color": "gold"}]

# 清他的冒險模式背包跟狀態
gamemode adventure @s
clear @s
effect clear @s

# 切回生存
gamemode survival @s

# 給一下下的緩降，免得傳回去的時候受傷
effect give @s minecraft:slow_falling 1 1 true

# 把玩家傳出場(加入準備室的告示牌前)
teleport @s -1055 0 -1029 270 0

# 把他的存活狀態取消
scoreboard players reset @s tntrun.living

# 把他移出隊伍
team leave @s