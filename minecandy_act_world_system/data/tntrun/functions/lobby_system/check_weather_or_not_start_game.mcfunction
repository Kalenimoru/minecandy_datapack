# 如果所有人都準備了(不存在沒準備的人)，開始遊戲
execute if score 遊戲系統狀態 tntrun.system_state matches 0 unless entity @a[predicate=!tntrun:is_sneaking,scores={tntrun.join=1}] run tellraw @a[scores={tntrun.join=1}] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"遊戲即將開始","bold":true,"color":"yellow"}]
execute if score 遊戲系統狀態 tntrun.system_state matches 0 unless entity @a[predicate=!tntrun:is_sneaking,scores={tntrun.join=1}] run function tntrun:game_starting/initialize_the_game

# 如果有人沒準備(存在沒準備的人)，廣播，10秒後再次檢查
execute if score 遊戲系統狀態 tntrun.system_state matches 0 if entity @a[predicate=!tntrun:is_sneaking,scores={tntrun.join=1}] run tellraw @a[scores={tntrun.join=1}] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"遊戲不會開始，因為","bold":true,"color":"yellow"},{"selector":"@a[predicate=!tntrun:is_sneaking,scores={tntrun.join=1}]","bold":true,"color":"gold"},{"text":"沒有進入準備狀態","bold":true,"color":"yellow"}]
execute if score 遊戲系統狀態 tntrun.system_state matches 0 if entity @a[predicate=!tntrun:is_sneaking,scores={tntrun.join=1}] run schedule function tntrun:lobby_system/check_weather_or_not_start_game 10s

execute if score 遊戲系統狀態 tntrun.system_state matches 1 run tellraw @a[scores={tntrun.join=1}] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"遊戲不會開始，因為有正在進行的遊戲","bold":true,"color":"yellow"}]
execute if score 遊戲系統狀態 tntrun.system_state matches 1 run schedule function tntrun:lobby_system/check_weather_or_not_start_game 10s
