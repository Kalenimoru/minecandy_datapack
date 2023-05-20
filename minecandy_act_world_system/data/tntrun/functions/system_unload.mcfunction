function tntrun:game_running/stop_the_game
scoreboard objectives remove tntrun.join
scoreboard objectives remove tntrun.joined_player_count
scoreboard objectives remove tntrun.system_state

# 更新告示牌上的顯示資訊
execute in minecraft:act run data modify block -1056 1 -1029 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前關機中"}],"text":""}'
execute in minecraft:act run data modify block -1077 7 -1000 Text3 set value '{"bold":true,"color":"gold","extra":[{"text":"目前關機中"}],"text":""}'