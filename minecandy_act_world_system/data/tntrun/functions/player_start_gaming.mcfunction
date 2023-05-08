#這個檔案是用在執行那些「當玩家正式開始遊戲」時，要對他們執行的事

tag @s add tntrun_living_player

#切冒險
gamemode adventure @s

#清背包
clear @s

#清狀態
effect clear @s

#給道具，放到快捷區第一格
item replace entity @s hotbar.0 with minecraft:stick{Enchantments:[{id:"minecraft:knockback",lvl:5s}],display:{Lore:['[{"text":"","italic":false},{"text":"活動限定物品，請勿攜帶出場。","color":"red"}]','[{"text":"用這根擊退你的對手","italic":false,"color":"yellow"}]'],Name:'{"text":"擊退棒棒","bold":true,"italic":false,"color":"light_blue"}'}} 1

#給狀態，一小時飽食
effect give @s minecraft:saturation 720000 100 true
effect give @s minecraft:resistance 36000 100 true

#傳送進場，位置隨機。注意這裡用到了絕對座標
spreadplayers -1000 -1000 0 10 false @s

scoreboard players add 存活人數 tntrun_player_rank 1