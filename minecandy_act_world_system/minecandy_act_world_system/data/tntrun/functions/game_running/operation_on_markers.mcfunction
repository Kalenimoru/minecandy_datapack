# 把他的存活時間+1
scoreboard players add @s tntrun.marker_living_time 1

# 如果他活超過5刻，把他底下的方塊set掉，然後殺掉他
execute if score @s tntrun.marker_living_time matches 5.. run fill ~-0.3 ~-1 ~-0.3 ~0.3 ~-1 ~0.3 minecraft:air replace minecraft:tnt
execute if score @s tntrun.marker_living_time matches 5.. run kill @s