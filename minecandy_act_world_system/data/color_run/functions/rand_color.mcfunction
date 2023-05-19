execute as @a at @s run playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 1
scoreboard players operation @e[type=minecraft:armor_stand,limit=16,sort=random,tag=newcolortest] color >< @e[type=minecraft:armor_stand,sort=random,limit=16,tag=newcolortest] color
execute as @e[type=minecraft:armor_stand,tag=newcolortest] at @s run function color_run:new_rand_set
scoreboard players operation 隨機顏色 color = @e[type=minecraft:armor_stand,sort=random,limit=1] color
title @a times 0 60 0
execute if score 隨機顏色 color matches 1 run title @a title {"text":"白色","color":"#cdd2d3","bold":true}
execute if score 隨機顏色 color matches 2 run title @a title {"text":"淺灰色","color":"#7c7c72","bold":true}
execute if score 隨機顏色 color matches 3 run title @a title {"text":"灰色","color":"#36393d","bold":true}
execute if score 隨機顏色 color matches 4 run title @a title {"text":"黑色","color":"#080a0f","bold":true}
execute if score 隨機顏色 color matches 5 run title @a title {"text":"棕色","color":"#603b20","bold":true}
execute if score 隨機顏色 color matches 6 run title @a title {"text":"紅色","color":"#8d2222","bold":true}
execute if score 隨機顏色 color matches 7 run title @a title {"text":"橘色","color":"#de6000","bold":true}
execute if score 隨機顏色 color matches 8 run title @a title {"text":"黃色","color":"#eead15","bold":true}
execute if score 隨機顏色 color matches 9 run title @a title {"text":"淺綠色","color":"#5ca518","bold":true}
execute if score 隨機顏色 color matches 10 run title @a title {"text":"綠色","color":"#485924","bold":true}
execute if score 隨機顏色 color matches 11 run title @a title {"text":"青色","color":"#157686","bold":true}
execute if score 隨機顏色 color matches 12 run title @a title {"text":"淺藍色","color":"#2387c5","bold":true}
execute if score 隨機顏色 color matches 13 run title @a title {"text":"藍色","color":"#2b2d8d","bold":true}
execute if score 隨機顏色 color matches 14 run title @a title {"text":"紫色","color":"#64209b","bold":true}
execute if score 隨機顏色 color matches 15 run title @a title {"text":"洋紅色","color":"#a8309e","bold":true}
execute if score 隨機顏色 color matches 16 run title @a title {"text":"粉紅色","color":"#d2638c","bold":true}
schedule function color_run:set_air 4s