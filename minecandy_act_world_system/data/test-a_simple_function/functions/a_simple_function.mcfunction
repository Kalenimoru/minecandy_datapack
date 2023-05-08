#當函數被執行時，如果執行者沒有拿著叢林木塊，那麼用title跟執行者說「no world」
execute if entity @a[nbt=!{SelectedItem:{id:"minecraft:jungle_wood"}}] run title @s title "no world"

#當函數被執行時，如果執行者拿著叢林木塊，那麼用title跟執行者說「hellow world」
execute if entity @a[nbt={SelectedItem:{id:"minecraft:jungle_wood"}}] run title @s title "hellow world"

#當函數被執行時，如果執行者拿著叢林木塊，那麼拿走(清掉)他背包中的一個叢林木塊
execute if entity @a[nbt={SelectedItem:{id:"minecraft:jungle_wood"}}] run clear @s minecraft:jungle_wood 1