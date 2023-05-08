#把用來記錄中途離開的記分板刪除
#give @a[tag=tntrun_join_game,scores={tntrun_player_rank=2..}] sugar{Enchantments:[{id:"minecraft:protection",lvl:4s}],HideFlags:3,display:{Lore:['[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"專屬活動用幣","color":"green"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"幣號:","color":"dark_aqua"},{"text":"00","color":"aqua"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]'],Name:'[{"text":"","italic":false},{"text":"活動幣","color":"gold","bold":true}]'}} 3
#give @a[tag=tntrun_join_game,scores={tntrun_player_rank=1}] sugar{Enchantments:[{id:"minecraft:protection",lvl:4s}],HideFlags:3,display:{Lore:['[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"專屬活動用幣","color":"green"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"幣號:","color":"dark_aqua"},{"text":"00","color":"aqua"}]','[{"text":"","italic":false}]','[{"text":"","italic":false},{"text":"----------------"}]'],Name:'[{"text":"","italic":false},{"text":"活動幣","color":"gold","bold":true}]'}} 10
kill @e[type=marker,tag=tntrun_marker]

scoreboard objectives remove tntrun_server_leave

scoreboard objectives remove tntrun_player_rank

scoreboard objectives remove tntrun_marker_timing

place template tntrun:area -1024 -51 -1024