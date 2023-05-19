# 如果玩家離開過遊戲又加進來，把他退出遊戲
execute if score @s tntrun.server_leave matches 1.. run function tntrun:game_running/when_player_quit_the_game

# 如果玩家沒有離開過遊戲那檢查他是不是掉到岩漿裡了，如果是，把他退出遊戲
execute unless score @s tntrun.server_leave matches 1.. if block ~ ~ ~ lava run function tntrun:game_running/when_player_fall_into_lava

# 如果都不是上述情況，那在他腳下召喚一個標記實體
execute unless score @s tntrun.server_leave matches 1.. unless block ~ ~ ~ lava run summon minecraft:marker ~ ~ ~ {Tags:["tntrun_marker"]}

# 如果都不是上述情況，那計算玩家存活了幾秒。把他的存活時間(刻)除20，然後把值貼給存活時間(秒)
execute unless score @s tntrun.server_leave matches 1.. unless block ~ ~ ~ lava if score @s tntrun.player_living_time_in_tick matches 20.. run scoreboard players add @s tntrun.player_living_time_in_second 1
execute unless score @s tntrun.server_leave matches 1.. unless block ~ ~ ~ lava if score @s tntrun.player_living_time_in_tick matches 20.. run scoreboard players set @s tntrun.player_living_time_in_tick 0