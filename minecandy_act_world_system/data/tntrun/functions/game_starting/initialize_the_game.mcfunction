# 將遊戲系統的狀態更改成有遊戲正在進行
scoreboard players set 遊戲系統狀態 tntrun.system_state 1

# 這個記分板用來紀錄遊戲中的玩家使否存活的狀態，1就是存活，以外情況就是被淘汰
scoreboard objectives add tntrun.living dummy

# 這個記分板用來記錄還有多少人活著
scoreboard objectives add tntrun.living_player_count dummy
scoreboard players set 存活人數 tntrun.living_player_count 0

# 這個記分板用來記錄玩家的名次，玩家的名次是他在被淘汰當下的「存活人數(包含將要被被淘汰的人在內)」
scoreboard objectives add tntrun.player_rank dummy

# 這個記分板用來記錄標記實體的存活時間
scoreboard objectives add tntrun.marker_living_time dummy

# 這個記分板用來記錄玩家的存活時間(單位:刻)，這個計分項每隔20刻會被除一次
scoreboard objectives add tntrun.player_living_time_in_tick minecraft.custom:play_time

# 這個記分板用來記錄玩家的存活時間(單位:秒)，這個記分項會顯示在記分板上
scoreboard objectives add tntrun.player_living_time_in_second dummy {"text":"    存活時間(秒)    ","bold": true,"color":"white","underlined": true}
scoreboard objectives setdisplay sidebar.team.red tntrun.player_living_time_in_second

# 這個記分板用來記錄誰中途離開
scoreboard objectives add tntrun.server_leave minecraft.custom:minecraft.leave_game

# 增加一個隊伍，主要是要拿來顯示存活玩家
team add tntrun.living_team {"text":"存活玩家","bold": true,"color": "red"}
team modify tntrun.living_team color red

# 給玩家該給的工具、狀態、切遊戲模式、傳進場
execute as @a[scores={tntrun.join=1}] at @s run function tntrun:game_starting/initialize_players

scoreboard objectives remove tntrun.join
scoreboard objectives remove tntrun.joined_player_count
scoreboard objectives add tntrun.join dummy
scoreboard objectives add tntrun.joined_player_count dummy
scoreboard players set 加入遊戲的人數 tntrun.joined_player_count 0

# 更新告示牌上的顯示資訊
data modify block -1056 1 -1029 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'
data modify block -1077 7 -1000 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'

# 玩家進場後一秒開始倒數
schedule function tntrun:game_starting/countdown_starting 1s
schedule function tntrun:game_starting/countdown_3 2s
schedule function tntrun:game_starting/countdown_2 3s
schedule function tntrun:game_starting/countdown_1 4s
schedule function tntrun:game_starting/countdown_go 5s
schedule function tntrun:game_running/running_the_game 5s
schedule function tntrun:game_starting/countdown_titlereset 6s