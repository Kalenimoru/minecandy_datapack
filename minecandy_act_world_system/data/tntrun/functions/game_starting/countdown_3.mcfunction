title @a[team=tntrun.living_team] subtitle {"text":"三","bold":true,"color":"yellow"}
tellraw @a[team=tntrun.living_team] [{"text":"【","color":"dark_red","bold":true},{"text":"TNTRUN系統","color":"red","bold":true},{"text":"】","color":"dark_red","bold":true},{"text":"三","bold":true,"color":"yellow"}]

#播音效給玩家
execute as @a[team=tntrun.living_team] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0