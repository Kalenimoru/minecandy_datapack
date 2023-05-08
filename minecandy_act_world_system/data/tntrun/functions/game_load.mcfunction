#增加一個記分板用來記錄誰中途離開
scoreboard objectives add tntrun_server_leave minecraft.custom:minecraft.leave_game

scoreboard objectives add tntrun_marker_timing dummy

scoreboard objectives add tntrun_player_rank dummy
scoreboard players set 存活人數 tntrun_player_rank 0

#給玩家該給的工具、狀態、切遊戲模式、傳進場
execute as @a[tag=tntrun_join_game] at @s run function tntrun:player_start_gaming

#玩家進場後一秒開始倒數
schedule function tntrun:game_countdown_starting 1s
schedule function tntrun:game_countdown_3 2s
schedule function tntrun:game_countdown_2 3s
schedule function tntrun:game_countdown_1 4s
schedule function tntrun:game_countdown_go 5s
schedule function tntrun:game_countdown_titlereset 6s
schedule function tntrun:game_playing 6s