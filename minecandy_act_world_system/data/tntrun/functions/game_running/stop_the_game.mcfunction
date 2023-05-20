# 給獎勵
#give @a[tag=tntrun_join_game,scores={tntrun_player_rank=2..}] sugar{Enchantments:[{id:"minecraft:protection",lvl:4s}],HideFlags:3,display:{Lore:['[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"專屬活動用幣","color":"green"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"幣號:","color":"dark_aqua"},{"text":"00","color":"aqua"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]'],Name:'[{"text":"","italic":false},{"text":"活動幣","color":"gold","bold":true}]'}} 3
#give @a[tag=tntrun_join_game,scores={tntrun_player_rank=1}] sugar{Enchantments:[{id:"minecraft:protection",lvl:4s}],HideFlags:3,display:{Lore:['[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"專屬活動用幣","color":"green"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"幣號:","color":"dark_aqua"},{"text":"00","color":"aqua"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]'],Name:'[{"text":"","italic":false},{"text":"活動幣","color":"gold","bold":true}]'}} 10

# 殺掉所有標記實體
kill @e[type=marker,tag=tntrun_marker]

# 移除各個記分板
scoreboard objectives remove tntrun.server_leave

scoreboard objectives remove tntrun.player_rank

scoreboard objectives remove tntrun.marker_living_time

scoreboard objectives remove tntrun.living

scoreboard objectives remove tntrun.living_player_count

scoreboard objectives remove tntrun.player_living_time_in_tick

scoreboard objectives remove tntrun.player_living_time_in_second

scoreboard objectives remove tntrun.player_living_time_in_minute

# 移除隊伍
team remove tntrun.living_team

# 場地復原
execute in minecraft:act run place template tntrun:area -1024 -51 -1024

# 將遊戲系統的狀態更改成沒有正在進行的遊戲
scoreboard players set 遊戲系統狀態 tntrun.system_state 0