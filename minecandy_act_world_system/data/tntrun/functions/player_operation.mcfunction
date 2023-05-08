execute if score @s tntrun_server_leave matches 1.. run function tntrun:player_leave_server
summon minecraft:marker ~ ~ ~ {Tags:["tntrun_marker"]}
execute if block ~ ~ ~ lava run function tntrun:player_fall_into_lava