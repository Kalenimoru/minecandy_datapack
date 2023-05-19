#這個檔案是用來對玩家執行那些「當遊戲正式開始」時，要對他們執行的事

# 把他們標記為存活
scoreboard players set @s tntrun.living 1

# 把他們加入存活玩家的隊伍
team join tntrun.living_team @s

# 把他們的存活時間設成-100刻(-5秒)，因為遊戲5秒後才開始
scoreboard players set @s tntrun.player_living_time_in_tick -100

# 切冒險
gamemode adventure @s

# 清背包
clear @s

# 清狀態
effect clear @s

# 給道具，直接放到手上
item replace entity @s weapon.mainhand with minecraft:stick{Enchantments:[{id:"minecraft:knockback",lvl:5s}],display:{Lore:['[{"text":"","italic":false},{"text":"活動限定物品，請勿攜帶出場。","color":"red"}]','[{"text":"用這根擊退你的對手","italic":false,"color":"yellow"}]'],Name:'{"text":"擊退棒棒","bold":true,"italic":false,"color":"light_blue"}'}} 1

# 給狀態，一小時的飽食跟一小時的抗性
effect give @s minecraft:saturation 720000 100 true
effect give @s minecraft:resistance 36000 100 true

# 傳送進場，位置隨機。注意這裡用到了絕對座標
spreadplayers -1000 -1000 0 10 false @s