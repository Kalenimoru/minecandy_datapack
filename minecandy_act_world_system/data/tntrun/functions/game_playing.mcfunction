execute as @a[tag=tntrun_living_player] at @s run function tntrun:player_operation
execute as @e[type=marker,tag=tntrun_marker] at @s run function tntrun:marker_operation
execute unless score 存活人數 tntrun_player_rank matches ..1 run schedule function tntrun:game_playing 1t
execute if score 存活人數 tntrun_player_rank matches ..1 as @a[tag=tntrun_living_player] at @s run function tntrun:player_win