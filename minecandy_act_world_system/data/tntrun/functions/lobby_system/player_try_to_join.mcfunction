# 除非當前有大於等於一個人，否則啟動準備系統
execute unless score 加入遊戲的人數 tntrun.joined_player_count matches 1.. run schedule function tntrun:lobby_system/check_weather_or_not_start_game 10s

# 把點告示牌的玩家加入遊戲
scoreboard players set @s tntrun.join 1

# 把玩家傳進準備室
teleport @s[scores={tntrun.join=1}] -1077 6 -1000 270 0

# 發給點告示牌的玩家一些點訊息
title @s[scores={tntrun.join=1}] title {"text":"您已加入遊戲"}
title @s[scores={tntrun.join=1}] subtitle {"text":"按住蹲下進入準備狀態"}

# 重新計算加入遊戲的玩家數量
execute store result score 加入遊戲的人數 tntrun.joined_player_count run execute if entity @a[scores={tntrun.join=1}]

# 更新告示牌上的顯示資訊
data modify block -1056 1 -1029 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'
data modify block -1077 7 -1000 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前有"},{"color":"yellow","score":{"name":"加入遊戲的人數","objective":"tntrun.joined_player_count"}},{"text":"人在準備室內"}],"text":""}'