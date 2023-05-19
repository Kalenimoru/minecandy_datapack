# 重新計算存活人數
execute store result score 存活人數 tntrun.living_player_count run execute if entity @a[scores={tntrun.living=1}]

# 如果存活人數沒有大於等於1(也就是所有人都死了)，執行一些關機的操作
execute unless score 存活人數 tntrun.living_player_count matches 1.. run function tntrun:game_running/stop_the_game

# 如果存活人數大於等於1，下一刻再繼續執行這個函數(等於一的情況也是繼續遊戲，單人練耐久)
execute if score 存活人數 tntrun.living_player_count matches 1.. run schedule function tntrun:game_running/running_the_game 1t

# 如果存活人數大於等於1，對每個遊戲中的玩家做一些檢查跟操作，主要是要在他們腳下召喚標記實體
execute if score 存活人數 tntrun.living_player_count matches 1.. as @a[scores={tntrun.living=1}] at @s run function tntrun:game_running/operation_on_players

# 如果存活人數大於等於1，對每個標記實體做一些檢查跟操作
execute if score 存活人數 tntrun.living_player_count matches 1.. as @e[type=marker,tag=tntrun_marker] at @s run function tntrun:game_running/operation_on_markers