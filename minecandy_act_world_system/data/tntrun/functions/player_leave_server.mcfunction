#這個檔案是用在執行那些「當玩家在遊戲結束前就離開伺服器」時，要對他們執行的事
gamemode adventure @s
clear @s
effect clear @s
teleport @s -1002 0 -945 180 0
gamemode survival @s
tag @s remove tntrun_living_player
tag @s remove tntrun_join_game
scoreboard players reset @s tntrun_server_leave
scoreboard players operation @s tntrun_player_rank = 存活人數 tntrun_player_rank
scoreboard players remove 存活人數 tntrun_player_rank 1