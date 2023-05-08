title @a[tag=tntrun_living_player] subtitle {"text":"二","bold":true,"color":"yellow"}
tellraw @a[tag=tntrun_living_player] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"二","bold":true,"color":"yellow"}]

#播音效給玩家
execute as @a[tag=tntrun_living_player] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0