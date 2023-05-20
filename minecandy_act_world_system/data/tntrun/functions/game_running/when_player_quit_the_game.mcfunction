# 這個檔案是用在執行那些「當玩家在遊戲結束前就離開伺服器」時，要對他們執行的事

# 清他的冒險模式背包跟狀態
gamemode adventure @s
clear @s
effect clear @s

# 把玩家傳出場(加入準備室的告示牌前)
execute in minecraft:act run teleport @s -1055 0 -1029 270 0

# 把他切回生存
gamemode survival @s

# 移除他身上的記分板
scoreboard players reset @s tntrun.server_leave
scoreboard players reset @s tntrun.player_living_time_in_tick

# 把他移出隊伍
team leave @s