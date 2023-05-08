scoreboard players add @s tntrun_marker_timing 1
execute if score @s tntrun_marker_timing matches 5.. run fill ~-0.3 ~-1 ~-0.3 ~0.3 ~-1 ~0.3 minecraft:air replace minecraft:tnt
execute if score @s tntrun_marker_timing matches 5.. run kill @s