# unload一下確保資料是新的
function tntrun:system_unload

# 這個記分板用來記錄一個玩家是否加入遊戲，1代表這個玩家加入了遊戲，以外情況就是沒加入
scoreboard objectives add tntrun.join dummy

# 這個記分板用來記錄現在加入遊戲的人數
scoreboard objectives add tntrun.joined_player_count dummy
scoreboard players set 加入遊戲的人數 tntrun.joined_player_count 0

# 這個記分板用來記錄遊戲系統的狀態，0代表開機中，但沒有正在進行的遊戲、1代表有遊戲正在進行、以外情況就是沒開機
scoreboard objectives add tntrun.system_state dummy
scoreboard players set 遊戲系統狀態 tntrun.system_state 0

# 更新告示牌上的顯示資訊
execute in minecraft:act run data modify block -1056 1 -1029 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'
execute in minecraft:act run data modify block -1077 7 -1000 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'